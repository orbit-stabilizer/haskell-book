curry :: ((t1, t2) -> t) -> t1 -> t2 -> t
curry f a b = f (a , b)

uncurry :: (t1 -> t2 -> t) -> (t1, t2) -> t
uncurry f (a, b) = f a b
