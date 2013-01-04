-- computing x^y.
-- if y == 0 then answer is 1
-- if y == 1 then answer is x
-- otherwise answer is x 'mult' resultant of x and (y-1)

mexp     :: Integral a => a -> a -> a
mexp x 0 = 1
mexp x 1 = x
mexp x y = x * (mexp x (y-1))