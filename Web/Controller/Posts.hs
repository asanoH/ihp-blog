module Web.Controller.Posts where

import Web.Controller.Prelude
import Web.View.Posts.Index
import Web.View.Posts.Example
import Web.View.Posts.New
import Web.View.Posts.Edit
import Web.View.Posts.Show
import qualified Text.MMark as MMark
import Network.Wai (getRequestBodyChunk)

instance Controller PostsController where
    beforeAction = putStrLn "A"

    action PostsAction = do
        posts <- query @Post 
            |> orderByDesc #createdAt
            |> fetch
        render IndexView { .. }
        posts <- query @Post |> fetch
        renderJson (toJSON posts)
        putStrLn ("posts is:" <> (tshow posts))

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

    action ExamplePostAction = autoRefresh do
        let firstname = paramOrDefault @Text "Unnamed" "firstname"
        requestBody <- request |> getRequestBodyChunk
        putStrLn ("Current request url: " <> tshow getRequestPath)
        putStrLn ("Request is:" <> tshow requestBody)
        render ExampleView { .. }

buildPost post = post
    |> fill @["title","body"]
    |> validateField #title nonEmpty
    |> validateField #body isMarkdown

isMarkdown :: Text -> ValidatorResult
isMarkdown text = 
    case MMark.parse "" text of
        Left _ -> Failure "Please provide valid Markdown"
        Right _ -> Success
