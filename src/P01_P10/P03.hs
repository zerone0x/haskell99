elementAt :: Int -> [a] -> a
elementAt _ [] = error "empty list"
elementAt 1 (x:_) = x
elementAt n (_:xs) = elementAt (n-1) (xs)