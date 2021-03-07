module PostsSpec where

import           Test.Hspec
import           IHP.Test.Mocking
import           IHP.FrameworkConfig (ConfigBuilder(..))
import           IHP.Prelude
import           IHP.QueryBuilder (fetch, query)

import           Web.Types
import           Web.Routes
import           Generated.Types
import           Main ()

spec :: Spec
spec = beforeAll (pure config >>= mockContext WebApplication) do
  describe "User controller" $ do
    it "has no existing users" $ withContext do
      posts <- query @Post |> fetch
      posts `shouldBe` []