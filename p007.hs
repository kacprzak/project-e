primes :: [Integer]
primes = 1:2:3:prs
  where
    1:p:candidates = [6*k+r | k <- [0..], r <- [1,5]]
    prs            = p : filter isPrime candidates
    isPrime n      = all (not . divides n) $ takeWhile (\p -> p*p <= n) prs
    divides n p    = n `rem` p == 0

main = print $ primes !! 10001
