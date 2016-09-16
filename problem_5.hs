isDivisableBy :: [Int] -> Int -> Bool
isDivisableBy xs y = all (\z -> y `rem` z == 0) xs

main = print $ head $ filter (isDivisableBy [11..20]) [20,40..]
