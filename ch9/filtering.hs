module Filtering where


myFilter :: String -> [String]
myFilter s = filter p (words s)
  where p = (\word -> not $ elem word ["the", "a", "an"])
