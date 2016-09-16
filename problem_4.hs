isPalindrome :: String -> Bool
isPalindrome w = w == reverse w

main = print $ head $ filter (isPalindrome . show) [x*y | x <- [999,998..100], y <- [999,998..100]]
