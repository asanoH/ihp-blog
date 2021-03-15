module Web.Controller.Posts where

import Web.Controller.Prelude
import Web.View.Posts.Index
import Web.View.Posts.New
import Web.View.Posts.Edit
import Web.View.Posts.Show
import qualified Text.MMark as MMark

instance Controller PostsController where
    action PostsAction = do
        posts <- query @Post |> fetch
        post1 <- query @Post |> fetchOne
        comments <- fetch (get #id post1)
          >>= pure . modify #comments (orderByDesc #createdAt)
          >>= fetchRelated #comments
        putStrLn $ "related comments " <> tshow comments
        newRecord @EmailCustomersJob |> create
        forEach posts \post -> do
            putStrLn (get #title post)
        posts <- query @Post 
            |> orderByDesc #createdAt
            |> fetch
        comments2 <- query @Post
            |> fetch
             >>= collectionFetchRelated #comments
             >>= \posts -> 
                 posts 
                    |> sortOn (\post -> post |> get #body)
                    |> pure
        putStrLn $ "comments2 " <> tshow comments2
        comments2 <- query @Comment |> filterWhere (#postId, get #id post1) |> orderByDesc #createdAt |> fetch
        comment1 <- query @Comment |> fetchOne 
        let comment1Id = get #id comment1
        post1 <- fetch comment1Id >>= fetchRelated #postId
        putStrLn $ "psot1 " <> tshow post1
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
