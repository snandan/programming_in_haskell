my_merge               :: Ord a => [a] -> [a] -> [a]
my_merge x []          = x
my_merge [] y          = y
my_merge (x:xs) (y:ys) = if x < y then 
                           [x] ++ (my_merge xs (y:ys))
                         else 
                           [y] ++ (my_merge (x:xs) ys)