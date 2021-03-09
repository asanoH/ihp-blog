module Web.Mail.Posts.Confirmation where
import Web.View.Prelude
import IHP.MailPrelude
import IHP.Mail

data ConfirmationMail = ConfirmationMail { post :: Post }

instance BuildMail ConfirmationMail where
    subject = "Confirmation mail"
    to ConfirmationMail { .. } = Address { addressName = Just "Firstname Lastname", addressEmail = "fname.lname@example.com" }
    from = "hi@example.com"
    html ConfirmationMail { .. } = [hsx|
        Hello World
    |]
