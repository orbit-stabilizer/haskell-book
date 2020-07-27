module SplitByChar where

split :: Char -> String -> [String]
split _ "" = []
split c s  = takeWhile p s' : split c (dropWhile p s')
  where p  = \c' -> c' /= c
        s' = dropWhile (not . p) s
