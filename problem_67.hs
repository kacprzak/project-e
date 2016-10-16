pyramid :: IO [[Int]]
pyramid = do
  contents <- readFile "p067_triangle.txt"
  let parseLine line = map read $ words line
  return (map parseLine $ lines contents)
  

reduce :: [[Int]] -> [Int]
reduce [x] = x
reduce (x:xs) = zipWith (+) x (shrink $ reduce xs)
  where
    shrink level = zipWith max level (tail level)

main = do
  p <- pyramid
  print $ reduce p
