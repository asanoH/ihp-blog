module Main where
import IHP.Prelude

import Config
import qualified IHP.Server
import IHP.RouterSupport
import IHP.FrameworkConfig
import IHP.Job.Types
import Web.FrontController
import Web.Types
import Web.Worker

import qualified Control.Concurrent.Async as Async
import qualified IHP.Job.Runner as Job
import IHP.ScriptSupport
import IHP.ModelSupport
import IHP.MailPrelude
import IHP.Log.Types (Logger)

instance FrontController RootApplication where
    controllers = [
            mountFrontController WebApplication
        ]

instance Worker RootApplication where
    workers _ = []

main :: IO ()
main = do
    --runScript config $ Job.runJobWorkers $ workers WebApplication
    frameworkConfig <- buildFrameworkConfig config
    FrameworkConfig { environment, dbPoolIdleTime, dbPoolMaxConnections, databaseUrl, logger } <- buildFrameworkConfig config
    modelContext1 <- createModelContext dbPoolIdleTime dbPoolMaxConnections databaseUrl logger
    Async.withAsync (do
        let ?context = frameworkConfig 
        let ?modelContext = modelContext1
        Job.runJobWorkers $ workers WebApplication) (\_ -> IHP.Server.run config)
    --IHP.Server.run config

