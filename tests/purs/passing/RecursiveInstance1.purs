-- Cf. failing/RecursiveInstance1.purs
module Main where

import Effect.Console (log)

class C a where
  c :: Int -> a

instance cInt :: C Int where
  c i = c i

main = log "Done"
