sumOfSqrs :: Integer -> Integer
sumOfSqrs n = sum $ [x*x | x <- [1..n]]

sqrOfSum :: Integer -> Integer
sqrOfSum n = s*s
  where s = (n*(n+1)) `div` 2

main = print $ (sqrOfSum n) - (sumOfSqrs n)
  where n = 100
