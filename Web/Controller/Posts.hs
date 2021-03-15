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
        newRecord @EmailCustomersJob |> create
        forEach posts \post -> do
            putStrLn (get #title post)
        posts <- query @Post 
            |> orderByDesc #createdAt
            |> fetch
        posts1 <- query @Post
            |> orderBy #createdAt
            |> offset 1
            |> limit 10
            |> filterWhere (#title, "a")
            |> filterWhereSql (#title, "a")
            |> queryOr
                (filterWhere (#title, "a")) (filterWhere (#title, "b"))
            |> findBy #title "a" 
        posts2 <- query @Post |> findManyBy #title "a"
        comments <- query @Comment |> fetch
        let merged = queryUnion (query @Post) (query @Post)
        post2 <- query @Post |> fetchOne 
        let postId2 =  get #id post2
        post3 <- postId2 |> fetch
        post4 <- (Just postId2) |> fetchOneOrNothing
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
