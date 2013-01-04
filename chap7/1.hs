-- Show that the list comprehension [f x | x <- xs, p x] can be re-expressed
-- using the higher order functiond 'map' and 'filter'

mfilter        :: (a -> Bool) -> (a -> b) -> [a] -> [b]
mfilter p f xs = map (f) (filter p xs)