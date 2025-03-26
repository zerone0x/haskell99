pack :: Eq a => [a]->[[a]]
pack [] = []
pack (x:xs)
    | null xs = [[x]]
    | x== head xs 
        = (x :(takeWhile (==x) xs))
            : pack(dropWhile (==x) xs)
        | otherwise = [x] : pack xs
