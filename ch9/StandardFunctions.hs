module StandardFunctions where


myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny p (a:as) = p a || myAny p as

-- myElem :: Eq a => a -> [a] -> Bool
-- myElem _ [] = False
-- myElem x (y:ys) = x == y || myElem x ys

myElem :: Eq a => a -> [a] -> Bool
myElem x ys = myAny (== x) ys

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (a:as) = myReverse as ++ [a]

squish :: [[a]] -> [a]
squish as = [x | y <- as, x <- y]

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (a:as) = f a ++  squishMap f as

squishAgain :: (a -> [b]) -> [a] -> [b]
squishAgain f = squish . (map f)

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ (a:[]) = a
myMaximumBy f (a:as) =
  case f a a' of
    GT -> a
    _  -> a'
  where a' = myMaximumBy f as

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ (a:[]) = a
myMinimumBy f (a:as) =
  case f a a' of
    LT -> a 
    _  -> a'
  where a' = myMinimumBy f as

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare
