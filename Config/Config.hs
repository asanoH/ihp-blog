module Config where

import IHP.Prelude
import IHP.Environment
import IHP.FrameworkConfig
import qualified IHP.Log as Log
import IHP.Log.Types
import Control.Concurrent (forkIO)
import Control.Monad (void)
import System.Process (callProcess)
import System.Log.FastLogger.Types

config :: ConfigBuilder
config = do
    option Development
    option (AppHostname "localhost")
    -- logger <- liftIO $ newLogger def {
    --     level = Debug,
    --     formatter = withTimeFormatter
    -- }
    logger <- liftIO $ newLogger def {
        destination = File "Log/production.log" (SizeRotate (Bytes (4 * 1024 * 1024)) 7) defaultBufSize
    }    
    option logger

mkLogger = newLogger def {
     destination = File
       filePath
       (TimedRotate formatString timeCompare compressFile)
       defaultBufSize
     }
  where  filePath = "Log/production.log"
         formatString = "%FT%H%M%S"
         timeCompare = (==)
         compressFile fp = void . forkIO $
            callProcess "tar" [ "--remove-files", "-caf", fp <> ".gz", fp ]