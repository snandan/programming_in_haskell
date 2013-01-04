import Data.Char

type Bit = Int

int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin int = rem int 2 : int2bin (quot int 2)

bin2int     ::[Bit] -> Int
bin2int bits = sum [w*x | (w, x) <- zip weights bits]
               where weights = iterate (*2) 1

make9 :: [Bit] -> [Bit]
make9 bits = if even ((foldr (+) 0) bits) then
               take 9 (bits ++ repeat 0)
             else
               take 8 (bits ++ repeat 0) ++ [1]
               
encode :: String -> [Bit]
encode = concat . map (make9 . int2bin . ord)

chop9 :: [Bit] -> [[Bit]]
chop9 [] = []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

validate :: [Bit] -> [Bit]
validate [] = []
validate bits = if even (sum bits) then
                  take 8 bits
                else
                  error "Parity mismatch"

decode :: [Bit] -> String
decode = map (chr . bin2int . validate) . chop9


transmit :: String -> String
transmit = decode . channel . encode

channel :: [Bit] -> [Bit]
channel = id
