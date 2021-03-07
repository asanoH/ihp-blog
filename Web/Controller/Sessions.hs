module Web.Controller.Sessions where

import Web.Controller.Prelude
import Web.View.Sessions.New
import qualified IHP.AuthSupport.Controller.Sessions as Sessions

instance Controller SessionsController where
    action NewSessionAction = Sessions.newSessionAction @User
    action CreateSessionAction = Sessions.createSessionAction @User
    action DeleteSessionAction = Sessions.deleteSessionAction @User
    action ExampleSessionAction = do
       case currentUserOrNothing of
           Just currentUser -> do
              let text = "Hello " <> (get #email currentUser)
              renderPlain "login"
           Nothing -> renderPlain "Please login first"

instance Sessions.SessionsControllerConfig User where
    beforeLogin = updateLoginHistory

updateLoginHistory user = do
    user 
        |> modify #logins (\count -> count + 1)
        |> updateRecord
    pure ()