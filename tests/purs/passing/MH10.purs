module Main where

import Prelude
import Effect.Console (log)
import A0
import A1
import A2 (Bar(Bar))

class Bar a where
  bar :: forall b. b -> a -> String

class Baz a b where
  baz :: a -> b -> String

-- instance barFooString :: Foo a String => Bar String where
--   bar a s = "ERROR"
-- else instance barString :: Bar String where
--   bar a s = s

instance bazFooBarString :: Foo Bar String => Baz Int String where
  baz a s = "ERROR"
else instance bazIntString :: Baz Int String where
  baz a s = s

main = log $ baz 0 "Done"
