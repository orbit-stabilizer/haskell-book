module Zipping where


-- zip :: [a] -> [b] -> [(a, b)]
-- zip as bs = map f [0..n] 
--  where f n = (as !! n, bs !! n)
--        n   = (min (length as) (length bs)) - 1

-- zip :: [a] -> [b] -> [(a, b)]
-- zip (a : as) (b: bs) = (a, b) : Zipping.zip as bs
-- zip _ _ = []

zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith f (a:as) (b:bs) = f a b : Zipping.zipWith f as bs
zipWith _ _ _ = []

zip :: [a] -> [b] -> [(a, b)]
zip = Zipping.zipWith (,)
