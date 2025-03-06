myButLast :: [a] -> a
myButLast [] = error "Empty list"
myButLast [_] = error "List has only one element"
myButLast [x, y] = x
myButLast (_:xs) = myButLast xs
