module Main where

import Prelude
import Effect.Console (log)

class Foo a where
  foo :: a -> String

class Bar a where
  bar :: a -> String

class Baz a where
  baz :: a -> String

class Quux
instance quux :: Quux

newtype Wrapper = Wrapper String

instance bazFoo :: Foo a => Baz a where
  baz = foo
else instance bazBar :: Bar a => Baz a where
  baz = bar
else instance bazQuux :: Quux => Baz String where
  baz s = s
else instance bazString :: Baz String where
  baz s = "ERROR"

main = log $ baz "Done"
