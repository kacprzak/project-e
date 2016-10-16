isMultiplesOfAny :: [Int] -> Int -> Bool
isMultiplesOfAny xs y = any (\x -> (mod y x) == 0) xs

main = print $ sum $ filter (isMultiplesOfAny [3, 5]) [1..999]
