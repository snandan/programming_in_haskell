-- How should the definition of the function 'qsort' be 
-- modified so that it produces a reverse sorted version
-- of a list

rev_qsort :: Ord a => [a] -> [a]
rev_qsort [] = []
rev_qsort (x:xs) = rev_qsort larger ++ [x] ++ rev_qsort smaller
                   where
                     larger  = [y | y <- xs, y > x]
                     smaller = [y | y <- xs, y <= x]