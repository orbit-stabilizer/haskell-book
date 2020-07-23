module MatchTheTypes where

import Data.List (sort)


-- Does not work
-- i :: a
-- i = 1 

-- Works
i :: Num a => a
i = 1

-- Works
-- f :: Float
-- f = 1.0

-- Does not work
-- f :: Num a => a
-- f = 1.0

-- Works
-- f :: Fractional a => a
-- f = 1.0

-- Works
f :: RealFrac a => a
f = 1.0

-- Works
-- freud :: a -> a
-- freud x = x

-- Works
freud :: Ord a => a -> a
freud x = x

-- Works
-- freud' :: a -> a
-- freud' x = x

-- Works
freud' :: Int -> Int
freud' x = x

myX = 1 :: Int

-- Works
-- sigmund :: Int -> Int
-- sigmund x = myX

-- Does not work
-- sigmund :: a -> a
-- sigmund x = myX

-- Works
-- sigmund' :: Int -> Int
-- sigmund' x = myX

-- Does not work
-- sigmund' :: Num a => a -> a
-- sigmund' x = myX


-- Works
-- jung :: Ord a => [a] -> a
-- jung xs = head (sort xs)

-- Works
jung :: [Int] -> Int
jung xs = head (sort xs)


-- Works
-- young :: [Char] -> Char
-- young xs = head (sort xs)

-- Works
young :: Ord a => [a] -> a
young xs = head (sort xs)

-- Works
mySort :: [Char] -> [Char]
mySort = sort

-- Works
signifier :: [Char] -> Char
signifier xs = head (mySort xs)

-- Does not work
-- signifier :: Ord a => [a] -> a
-- signifier xs = head (mySort xs)
