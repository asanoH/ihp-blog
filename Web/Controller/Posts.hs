module Web.Controller.Posts where

import Web.Controller.Prelude
import Web.View.Posts.Index
import Web.View.Posts.New
import Web.View.Posts.Edit
import Web.View.Posts.Show
import qualified Text.MMark as MMark

instance Controller PostsController where
    action PostsAction = do
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
            |> validateIsUnique #title
            >>= ifValid \case
                Left post -> do
                    let postError = post |> getError
                    putStrLn $ tshow postError
                    render NewView { .. }
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
    |> validateField #title (nonEmpty |> withCustomErrorMessage "Please enter your firstname")
    |> validateField #body isMarkdown
    |> attachFailure #title "This error will show up"

getError post = post
    |> get #meta
    |> annotations

isMarkdown :: Text -> ValidatorResult
isMarkdown text = 
    case MMark.parse "" text of
        Left _ -> Failure "Please provide valid Markdown"
        Right _ -> Success

nonEmpty' :: Text -> ValidatorResult
nonEmpty' "" = Failure "This fields cannot be empty"
nonEmpty' _ = Success

isAge :: Int -> ValidatorResult
isAge = isInRange (0, 100)
