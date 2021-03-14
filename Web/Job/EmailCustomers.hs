module Web.Job.EmailCustomers where
import Web.Controller.Prelude

instance Job EmailCustomersJob where
    perform EmailCustomersJob { .. } = do
        putStrLn "Hello Job!"
        posts <- query @Post |> fetch
        forEach posts \post -> do
            putStrLn (get #title post)
