-- Cf. failing/RecursiveConstrainedInstance*.purs
module Main where

import Prelude
import Effect.Console (log)

class Trivial
instance trivial :: Trivial

class C a where
  c :: Trivial => a

instance cInt :: C Int where
  c = c

main = log "Done"
