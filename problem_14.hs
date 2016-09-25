collatzNext :: Int -> Int
collatzNext n
  | even n = div n 2
  | odd n  = 3*n + 1

collatz :: Int -> [Int]
collatz 1 = [1]
collatz n = n : collatz (collatzNext n)

main = print $ maximum $ map (length . collatz) [1..999999] 
