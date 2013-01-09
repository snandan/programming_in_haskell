-- Implement last

my_last :: [a] -> a
my_last [x] = x
my_last (x:xs) = my_last xs