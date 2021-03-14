module Web.Controller.Posts where

import Web.Controller.Prelude
import Web.View.Posts.Index
import Web.View.Posts.New
import Web.View.Posts.Edit
import Web.View.Posts.Show
import qualified Text.MMark as MMark

instance Controller PostsController where
    action PostsAction = withTransaction do
        posts <- query @Post 
            -- |> orderBy #createdAt
            |> limit 10
            |> distinctOn #title
            |> fetch
        postCounts <- query @Post
            |> filterWhere (#title, "a")
            |> fetchCount
        putStrLn $ "post with title a is " <> (tshow postCounts)
        newRecord @Post |> create
        insertedPost <- newRecord @Post 
            |> set #title "p"
            |> createRecord
        let postId2 = get #id insertedPost    
        post1 <- fetch postId2
        post1 
            |> set #title "q"
            |> updateRecord
        deleteRecord post1
        --deleteRecords [post1]
        posts <- createMany [newRecord @Post] 
        newRecord @EmailCustomersJob |> create
        forEach posts \post -> do
            putStrLn (get #title post)
        -- let postId1 :: Id Post = "1a4fd022-e203-4069-9fba-81e2205a595e"
        -- post <- fetch postId1
        -- putStrLn (get #title post)
        posts <- query @Post 
            |> orderByDesc #createdAt
            |> fetch
        render IndexView { .. }

    action NewPostAction = do
        let post = newRecord
        render NewView { .. }

    action ShowPostAction { postId } = do
        post <- fetch postId
            >>= pure . modify #comments (orderByDesc #createdAt)
        		>>= fetchRelated #comments
        render ShowView { .. }

    action EditPostAction { postId } = do
        post <- fetch postId
        render EditView { .. }

    action UpdatePostAction { postId } = do
        post <- fetch postId
        post
            |> buildPost
            |> ifValid \case
                Left post -> render EditView { .. }
                Right post -> do
                    post <- post |> updateRecord
                    setSuccessMessage "Post updated"
                    redirectTo EditPostAction { .. }

    action CreatePostAction = do
        let post = newRecord @Post
        post
            |> buildPost
            |> ifValid \case
                Left post -> render NewView { .. } 
                Right post -> do
                    post <- post |> createRecord
                    setSuccessMessage "Post created"
                    redirectTo PostsAction

    action DeletePostAction { postId } = do
        post <- fetch postId
        deleteRecord post
        setSuccessMessage "Post deleted"
        redirectTo PostsAction

buildPost post = post
    |> fill @["title","body"]
    |> validateField #title nonEmpty
    |> validateField #body isMarkdown

isMarkdown :: Text -> ValidatorResult
isMarkdown text = 
    case MMark.parse "" text of
        Left _ -> Failure "Please provide valid Markdown"
        Right _ -> Success
