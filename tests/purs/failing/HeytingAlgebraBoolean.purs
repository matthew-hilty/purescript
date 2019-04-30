-- @shouldFailWith DictMissingEtaExpansion
-- Cf. passing/HeytingAlgebraBoolean.purs
module HeytingAlgebraBoolean where

import Prelude ((<<<))

class HeytingAlgebra a where
  ff :: a
  tt :: a
  implies :: a -> a -> a
  conj :: a -> a -> a
  disj :: a -> a -> a
  not :: a -> a

foreign import boolConj :: Boolean -> Boolean -> Boolean
foreign import boolDisj :: Boolean -> Boolean -> Boolean
foreign import boolNot :: Boolean -> Boolean

-- | Like the analagous instance declaration in
-- | tests/purs/passing/EtaExpandedHeytingAlgebraBoolean.purs,
-- | this definition of `heytingAlgebraBoolean` is self-referential
-- | in that one of its components, `implies`, depends on two of the instance's
-- | other members (namely, `not` and `disj`).
-- | However, although the analagous definition among the passing tests type-checks,
-- | the following definition does not,
-- | since the terms `not` and `||` are immediately applied to `<<<`.
-- | In other words, no `Abs` expression exists to obscure the typechecker's
-- | process for cycle determination.
instance heytingAlgebraBoolean :: HeytingAlgebra Boolean where
  ff = false
  tt = true
  implies = disj <<< not
  conj = boolConj
  disj = boolDisj
  not = boolNot
