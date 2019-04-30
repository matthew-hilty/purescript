-- Cf. failing/Nukisman.purs
module Main where

import Effect.Console (log)

import Data.Foldable (class Foldable, foldrDefault, foldMapDefaultL)

data Tree a
  = Leaf
  | Branch (Tree a) a (Tree a)

-- NOTE: `foldMap` does not need to be eta-expanded
-- because the reference to `foldableTree` in its elaborated AST
-- occurs within an `Abs` node.

instance foldableTree :: Foldable Tree where
  foldl _ acc Leaf = acc
  foldl f acc (Branch l e r) = acc -- Just for debug
  foldr f = foldrDefault f
  foldMap = foldMapDefaultL

main = log "Done"
