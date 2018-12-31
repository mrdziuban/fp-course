{-# LANGUAGE NoImplicitPrelude #-}

module Course.Ternary where

import qualified Prelude as P

data Cond a = a :? a

infixl 0 ?
infixl 1 :?

(?) :: P.Bool -> Cond a -> a
P.True  ? (x :? _) = x
P.False ? (_ :? y) = y
