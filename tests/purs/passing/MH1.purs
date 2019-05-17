module Main where

import Prelude
import Effect.Console (log)

class Foo a where
  foo :: a -> String

class Bar a where
  bar :: a -> String

class Baz a where
  baz :: a -> String

newtype Wrapper = Wrapper String

instance fooWrapper :: Foo Wrapper where
  foo (Wrapper s) = s <> s

instance barString :: Bar String where
  bar s = s

instance bazFoo :: Foo a => Baz a where
  baz = foo
else instance bazBar :: Bar a => Baz a where
  baz = bar

main = log $ baz "Done"
