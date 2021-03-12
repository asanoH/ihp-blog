module Web.Controller.HelloWorld where

import Web.Controller.Prelude

import qualified Network.WebSockets as WS
import qualified Data.UUID.V4 as UUID
import qualified Data.UUID as UUID
import qualified Data.Maybe as Maybe
import IHP.AutoRefresh
import IHP.AutoRefresh.Types

instance WSApp HelloWorldController where
    initialState = WaitForName

    run = do
        --sendTextData ("Hello World!" :: Text)
        name :: Text <- receiveData
        --myUUID :: UUID <- receiveData
        setState NameEntered { name }
        sendTextData ("Hello " <> name <> "!")
    
    onClose = do
        state <- getState
        case state of
            WaitForName -> pure ()
            NameEntered { name } -> do
                let message :: Text = name <> " has left!"
                putStrLn message
                forever receiveDataMessage

    onPing = do
        now <- getCurrentTime
        --AutoRefreshActive { sessionId } <- getState
        mSessionId <- getSessionUUID "session"
        maybe (pure ()) (\sessionId -> updateSession sessionId (\session -> session { lastPing = now })) mSessionId