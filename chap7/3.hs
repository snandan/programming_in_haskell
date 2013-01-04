-- Redefine the functions 'map f' and 'filter p' using foldr
mymap      :: (a -> b) -> [a] -> [b]
mymap f [] = []
mymap f xs = foldr (\y ys -> (f y):ys) [] xs

myfilter :: (a -> Bool) -> [a] -> [a]
myfilter p [] = []
myfilter p xs = foldr (\y ys -> if p y then y:ys else ys) [] xs