my_merge               :: Ord a => [a] -> [a] -> [a]
my_merge x []          = x
my_merge [] y          = y
my_merge (x:xs) (y:ys) = if x < y then 
                           [x] ++ (my_merge xs (y:ys))
                         else 
                           [y] ++ (my_merge (x:xs) ys)
                           
                           
halve     :: [a] -> ([a], [a])
halve []  = ([], [])
halve [x] = ([x], [])
halve x   = (take n x, drop n x) 
            where 
              n = quot (length x) 2
            
            
merge_sort        :: Ord a => [a] -> [a]
merge_sort []     = []
merge_sort [x]    = [x]
merge_sort [x, y] = if x < y then [x, y] else [y, x]
merge_sort x      = my_merge (merge_sort (first)) (merge_sort (second))
                    where
                      (first, second) = halve x