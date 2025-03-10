isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_]  = True
isPalindrome (x:xs) = if x == last xs then isPalindrome [xs] else False