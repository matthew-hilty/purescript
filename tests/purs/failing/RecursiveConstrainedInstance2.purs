-- @shouldFailWith DictCycleInDeclaration
module Main where

class Trivial
instance trivial :: Trivial

class C a where
  c0 :: a
  c1 :: a

instance cInt :: C Int where
  c0 = 0
  c1 :: Trivial => Int
  c1 = c0
