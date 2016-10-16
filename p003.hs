divisors :: Int -> [Int]
divisors n = 1 : filter ((==0) . rem n) [2 .. n `div` 2]

primeFactors :: Int -> [Int]
primeFactors x = case divisors x of
  1:d:_ -> d : primeFactors (div x d)
  1:[]  -> [x]
  
main = print $ maximum $ primeFactors 600851475143
