module Cipher where

import Data.Char


caesar :: Int -> String -> String
caesar k = map go
  where go c
          | isAlpha c && isAscii c = chr $ ((ord c - j + k) `mod` 26) + j 
          | otherwise              = c
          where j = ord $ if isUpper c then 'A' else 'a' 

unCaesar :: Int -> String -> String
unCaesar k = map go
  where go c
          | isAlpha c && isAscii c = chr $ ((ord c - j - k) `mod` 26) + j 
          | otherwise              = c
          where j = ord $ if isUpper c then 'A' else 'a' 

