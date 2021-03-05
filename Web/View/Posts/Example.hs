module Web.View.Posts.Example where
import Web.View.Prelude

data ExampleView = ExampleView { firstname :: Text}

instance View ExampleView where
    html ExampleView { .. } = [hsx|Hello World, {firstname}!|]

