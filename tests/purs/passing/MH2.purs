module Main where

import Prelude
import Effect.Console (log)

class Foo a

class Bar a where
  bar :: a -> String

instance bar0 :: Foo String => Bar String where
  bar s = s <> s
else instance bar1 :: Bar String where
  bar s = s

main = log $ bar "Done"
