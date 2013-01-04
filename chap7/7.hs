-- Given the following function:
unfold :: (a -> Bool) -> (a -> b) -> (a -> a) -> a -> [b]
unfold p h t x | p x = []
               | otherwise = h x : unfold p h t (t x)
                             
-- Redefine the following functions:

chop8 :: [Int] -> [[Int]]
chop8 = unfold (==[]) (take 8) (drop 8)


umap :: Eq a => (a -> b) -> [a] -> [b]
umap f = unfold (==[]) (f . head) (tail)


uiterate :: (a -> a) -> a -> [a]
uiterate f = unfold (\_ -> False) (id) (f)