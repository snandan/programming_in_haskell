-- Implement 'init' in two different ways
-- 'init' removes the last element from a non-empty list

init_1 :: [a] -> [a]
init_1 [x] = []
init_1 (x:xs) = [x] ++ init_1 xs


init_2 :: [a] -> [a]
init_2 xs = take ((length xs) - 1) xs