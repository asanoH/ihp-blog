module Config where

import IHP.Prelude
import IHP.Environment
import IHP.FrameworkConfig
import IHP.Mail

config :: ConfigBuilder
config = do
    option Development
    option (AppHostname "localhost")
    option $ SMTP
        { host = "smtp.gmail.com"
        , port = 587
        , credentials = Just ("mail", "pass") -- or Just ("myusername","hunter2")
        }
    option $ SES
        { accessKey = "YOUR AWS ACCESS KEY"
        , secretKey = "YOUR AWS SECRET KEY"
        , region = "eu-west-1" -- YOUR REGION
        }    