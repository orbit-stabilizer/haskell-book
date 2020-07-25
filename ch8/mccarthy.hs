module McCarthy where

mc91 :: Integer -> Integer
mc91 n
  | n <= 100 =  mc91 . mc91 $ n + 11
  | otherwise = n - 10
