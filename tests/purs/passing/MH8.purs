module Main where

import Prelude
import Effect.Console (log)

class Foo a where
  foo :: a -> String

class Bar a where
  bar :: a -> String

class Baz a where
  baz :: a -> String

data Wrapper = Partial => Wrapper String

instance bazFoo :: Foo a => Baz a where
  baz = foo
else instance bazBar :: Bar a => Baz a where
  baz = bar
else instance bazQuux :: Partial => Baz Wrapper where
  baz (Wrapper "Done") = "Done"
else instance bazString :: Baz Wrapper where
  baz s = "ERROR"

main = log $ baz (Wrapper "Done")
