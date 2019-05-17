module Main where

import Prelude
import Data.Symbol (SProxy(..))
import Effect.Console (log)
import Type.Proxy (Proxy(..))
import Type.Row (RProxy(..))

class Comparison l r (o :: Symbol) | l r -> o

instance comparisonY :: Comparison t t "Y"
else instance comparisonN :: Comparison l r "N"

comparable :: forall l r o. Comparison l r o => l -> r -> SProxy o
comparable _ _ = SProxy

different :: forall l r. Comparison l r "N" => l -> r -> SProxy "N"
different _ _ = SProxy

proxyExample0 :: forall t. Proxy t -> SProxy _
proxyExample0 _ =
  comparable (Proxy :: Proxy t) (Proxy :: Proxy Int)

proxyExample1 :: forall t. Proxy t -> SProxy _
proxyExample1 _ =
  different (Proxy :: Proxy t) (Proxy :: Proxy Int)

rproxyExample0 :: forall t. Proxy t -> SProxy _
rproxyExample0 _ =
  comparable
    (RProxy :: RProxy (u :: t, m :: Int))
    (RProxy :: RProxy (u :: Int, m :: Int))

rproxyExample1 :: forall t. Proxy t -> SProxy _
rproxyExample1 _ =
  different
    (RProxy :: RProxy (u :: t, m :: Int))
    (RProxy :: RProxy (u :: Int, m :: Int))

main = log "Done"
