-- @shouldFailWith DictMissingEtaExpansion
-- Cf. passing/RecursiveInstance1.purs
module Main where

class C a where
  c :: Int -> a

instance cInt :: C Int where
  c = c
