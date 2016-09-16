isPalindrome :: String -> Bool
isPalindrome w = w == reverse w

main = print $ maximum $ filter (isPalindrome . show) [x*y | x <- [999,998..100], y <- [x-1,x-2..100]]
