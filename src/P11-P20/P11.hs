encodeModified :: Eq a => [a] -> [(Int, a)]
encodeModified [] = []
encodeModified (x:xs) = 
    let count = length (x : takeWhile (==x) xs)
    in if count == 1
        then (1, x) : encodeModified (dropWhile (==x) xs)
        else (count, x) : encodeModified (dropWhile (==x) xs)