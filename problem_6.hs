sumOfSqrs :: Integer -> Integer
sumOfSqrs n = sum $ [x*x | x <- [1..n]]

sqrOfSum :: Integer -> Integer
sqrOfSum n = s*s
  where s = sum [1..n]

main = print $ (sqrOfSum n) - (sumOfSqrs n)
  where n = 100
