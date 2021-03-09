module Web.Job.EmailCustomers where
import Web.Controller.Prelude
import Prelude (writeFile)

instance Job EmailCustomersJob where
    perform EmailCustomersJob { .. } = do
      putStrLn "Hello Jobs"
      --newRecord @EmailCustomersJob |> create
      customers <- query @Post |> fetch
      forEach customers sendToCustomer
      writeFile "./job.txt" "job"
      where 
        sendToCustomer customer = putStrLn (title customer)