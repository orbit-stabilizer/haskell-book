module WordNumber where

import Data.List (intercalate)

digitToWord :: Int -> String
digitToWord = (!!) ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

digits :: Int -> [Int]
digits 0 = []
digits n = r : digits q where (q, r) = divMod n 10

wordNumber :: Int -> String
wordNumber = intercalate "-" . map digitToWord . reverse . digits
