fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main = print $ (+1) $ fst $ last $ zipWith (,) [0..] (takeWhile (<10^999) $ fibs)
