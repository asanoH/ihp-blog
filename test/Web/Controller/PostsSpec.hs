module PostsSpec where

import           Test.Hspec
import           IHP.Test.Mocking
import           IHP.FrameworkConfig (ConfigBuilder(..))
import           IHP.Prelude
import           IHP.QueryBuilder (query)
import           Web.Controller.Prelude (fetch)

import           Web.Types
import           Web.Routes
import           Generated.Types
import           Main ()
import           Config (config)
import           Data.ByteString.Lazy.UTF8 (toString)
import           Network.HTTP.Types (status200)
import           Data.Text (unpack)

spec :: Spec
spec = beforeAll (pure config >>= mockContext WebApplication) do
  describe "Post controller" $ do
    it "has existing posts" $ withContext do
      posts <- query @Post |> fetch
      posts `shouldNotBe` []
    it "responds with some content" $ withContext do
      content <- mockActionResponse NewPostAction
      (toString content) `shouldContain` "<!DOCTYPE HTML>"
    it "creates a new post" $ withParams [("a-test-param","some-value")] do
      --content <- mockActionResponse NewPostAction
      --putStrLn $ "test " <> (tshow content)
      mockActionStatus CreatePostAction `shouldReturn` status200
    it "returns a redirect header" $ withContext do
      hs <- headers (mockAction NewPostAction)
      (unpack $ tshow hs) `shouldContain` "Content-Type"