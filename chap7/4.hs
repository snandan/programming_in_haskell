-- Using foldl, define a function 'dec2int :: [Int] -> Int' that converts
-- a decimal number into an integer.

dec2int :: [Int] -> Int
dec2int xs = foldl ((+) . (*10)) 0 xs