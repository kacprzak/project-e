leastCommonMultiple :: [Int] -> Int
leastCommonMultiple (x1:x2:[]) = lcm x1 x2
leastCommonMultiple (x:xs) = lcm x (leastCommonMultiple xs)

main = print $ leastCommonMultiple [11..20]
