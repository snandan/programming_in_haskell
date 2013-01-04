-- Decide if all logical values of a list are True:
my_and           :: [Bool] -> Bool
my_and []        = True
my_and (False:_) = False
my_and (True:xs) = my_and xs


-- Concatenate a list of lists
my_concat        :: [[a]] -> [a]
my_concat []     = []
my_concat (x:xs) = x ++ (my_concat xs)


-- Produce a list of 'n' identical elements:
my_replicate     ::  Int -> a -> [a]
my_replicate 0 _ = []
my_replicate n x = [x] ++ (my_replicate (n-1) x)
  
                   
-- Select the 'n'th element of the list:
(??)        :: [a] -> Int -> a
(x:xs) ?? 0 = x
(x:xs) ?? n = xs ?? (n-1)

-- Decide if a value is an element of a list:
-- The objects of the list needs to be equality comparable 'Eq'
iselem          :: Eq a => a -> [a] -> Bool
iselem _ []     = False
iselem e (x:xs) = if e == x then True else iselem e xs

