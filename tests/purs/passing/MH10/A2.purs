-- module A2 (Bar(Bar)) where
module A2 (module X) where

import A1 (Bar(Bar)) as X
