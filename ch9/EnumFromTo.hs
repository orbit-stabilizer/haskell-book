module EnumFromTo where


eftBool :: Bool -> Bool -> [Bool]
eftBool False True = [False, True]
eftBool _ _ = []

eftInt :: Int -> Int -> [Int]
eftInt n1 n2 = if n1 <= n2 then n1 : eftInt (succ n1) n2 else []

eftChar :: Char -> Char -> [Char]
eftChar c1 c2 = if c1 <= c2 then c1 : eftChar (succ c1) c2 else []

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd EQ GT = [EQ, GT]
eftOrd LT EQ = [LT, EQ]
eftOrd LT GT = [LT, EQ, GT]
eftOrd _ _ = []
