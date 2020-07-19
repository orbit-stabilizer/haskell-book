module Practice where

mult1 = x * y
  where x = 5
        y = 6

addmult1 = x * 3 + y
  where x = 3
        y = 1000
addmult2 = x * 5
  where y = 10
        x = 10 * 5 + y

div2 = z / x + y
  where x = 7
        y = negate x
        z = y * 10

waxOn = x * 5
  where z = 7
        y = z + 8
        x = y ^ 2


triple = (*) 3
