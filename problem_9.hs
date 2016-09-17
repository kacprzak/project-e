pithagoreanTriplets = [(a,b,c) | c <- [3..], b <- [1..c-1], a <- [1..b-1], a*a+b*b==c*c]

main = print $ prod $ head $ filter eq1000 pithagoreanTriplets
  where
    eq1000 (a,b,c) = a+b+c==1000
    prod (a,b,c) = a*b*c

