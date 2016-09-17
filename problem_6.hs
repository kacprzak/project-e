sumOfSqrs :: Integer -> Integer
sumOfSqrs n = (n*(n+1)*(2*n+1)) `div` 6

sqrOfSum :: Integer -> Integer
sqrOfSum n = s*s
  where s = (n*(n+1)) `div` 2

main = print $ (sqrOfSum n) - (sumOfSqrs n)
  where n = 100
