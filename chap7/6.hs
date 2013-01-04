-- Define the library function 'curry' that converts a function 
-- on pairs into a curried function, 
-- and conversely, the function 'uncurry' that converts a curried 
-- function with arguments into a function on pairs


mcurry   :: ((a, b) -> c) -> a -> b -> c
mcurry f = \x y -> f (x, y)

muncurry   :: (a -> b -> c) -> (a, b) -> c
muncurry f = \(x, y) -> f x y