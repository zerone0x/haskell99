myReverse :: [a] -> [a]
myReverse [x] = [x]
myReverse [a, b] =  [b, a]
myReverse (x:xs) = myReverse xs ++ [x]