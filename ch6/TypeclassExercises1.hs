module MoreTypeclasses where


data TisAnInteger =
  TisAn Integer

data TwoIntegers = 
  Two Integer Integer

data StringOrInt = 
  TisAnInt Int | TisAString String

data Pair a = 
  Pair a a

data Tuple a b = 
  Tuple a b

data Which a = 
  ThisOne a | ThatOne a

data EitherOr a b = 
  Hello a | Goodbye b


instance Eq TisAnInteger where
  (==) (TisAn n) (TisAn n') = (==) n n'

instance Eq TwoIntegers where
  (Two n n') == (Two m m') =
    n == m && n' == m'

instance Eq StringOrInt where
  (==) (TisAnInt n) (TisAnInt m) = n == m
  (==) (TisAString s) (TisAString t) = s == t
  (==) _ _ = False

instance Eq a => Eq (Pair a) where
  (==) (Pair x x') (Pair y y') =
    x == y && x' == y'

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x y) (Tuple x' y') = x == x' && y == y'

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a'
  (==) (ThatOne a) (ThatOne a') = a == a'
  (==) _ _= False

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a') = a == a'
  (==) (Goodbye b) (Goodbye b') = b == b'
  (==) _ _ = False

