-- Define function 'product' that produces the product 
-- of a list of numbers and show using your definition 
-- that product [2, 3, 4] = 24

my_product :: Num a => [a] -> a
my_product [] = 1
my_product (x:xs) = x * (product xs)