digs :: Integral a => a -> [a]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main = print $ (+1) $ fst $ last $ zipWith (,) [0..] (takeWhile (<1000) $ map (length . digs) fibs)
