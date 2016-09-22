import Data.List

divisors :: Int -> [Int]
divisors n = 1 : filter ((==0) . rem n) [2 .. n `div` 2]

primeFactors :: Int -> [Int]
primeFactors x = case divisors x of
  1:d:_ -> d : primeFactors (div x d)
  1:[] -> [x]

triangularN :: Int -> Int
triangularN n = (n*(n+1)) `div` 2

triangulars :: [Int]
triangulars = map triangularN [0..]

numOfDivisors :: Int -> Int
numOfDivisors 0 = 0
numOfDivisors 1 = 1
numOfDivisors n = product $ map ((+1) . length) $ group $ primeFactors n

main = print $ head $ dropWhile ((<=500) . numOfDivisors) triangulars
