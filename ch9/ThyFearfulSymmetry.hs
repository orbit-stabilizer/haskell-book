module ThyFearfulSymmetry where

myWords :: String -> [String]
myWords "" = []
myWords s = takeWhile p s' : myWords (dropWhile p s')
  where p = \c -> c /= ' '
        s' = dropWhile (not . p) s
