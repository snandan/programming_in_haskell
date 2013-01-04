-- Without looking into the standard Prelude, define
-- the higher order functions - all, any takeWhile and dropWhile

my_all     :: (a -> Bool) -> [a] -> Bool
my_all p xs = (foldr (&&) True)(map (p) xs)

my_any     :: (a -> Bool) -> [a] -> Bool
my_any p xs = (foldr (||) False) (map (p) xs)

my_takeWhile :: (a -> Bool) -> [a] -> [a]
my_takeWhile p xs = filter p xs

my_dropWhile :: (a -> Bool) -> [a] -> [a]
my_dropWhile p xs = filter (not . p) xs