module Exercises where


-- 1)
-- tensDigit :: Integral a => a -> a
-- tensDigit x = d
-- where xLast = x `div` 10
--       d     = xLast `mod` 10

tensDigit :: Integral a => a -> a
tensDigit x = mod (fst $ divMod x 10) 10

hunsD x = mod (fst $ divMod x 100) 10

-- 2)
-- foldBool :: a -> a -> Bool -> a
-- foldBool x y b = case b of 
--  False -> x
--  True -> y

foldBool :: a -> a -> Bool -> a
foldBool x y b
  | b = y
  | otherwise = x


-- 3)
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)
  
