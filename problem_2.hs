fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

takeWhileInclusive :: (a -> Bool) -> [a] -> [a]
takeWhileInclusive _ [] = []
takeWhileInclusive p (x:xs) = x : if p x then takeWhileInclusive p xs
                                         else []

main = print $ sum $ filter even $ takeWhileInclusive (<4000000) $ tail $ tail fibs
