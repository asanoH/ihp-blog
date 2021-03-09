#!/usr/bin/env run-script
module Application.Script.RunEmailCustomersJob where

import Application.Script.Prelude

import IHP.Job.Runner
import Web.Types
import Web.Worker

run :: Script
run = do
    putStrLn "Hello World Script!"
    newRecord @EmailCustomersJob |> create
    newRecord @Post |> create
    runJobWorkers $ workers WebApplication
    pure ()