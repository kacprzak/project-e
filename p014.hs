import Data.List
import Data.Ord

takeWhileInclusive :: (a -> Bool) -> [a] -> [a]
takeWhileInclusive _ [] = []
takeWhileInclusive p (x:xs) = x : if p x then takeWhileInclusive p xs
                                         else []

collatzNext :: Int -> Int
collatzNext n
  | even n = div n 2
  | odd n  = 3*n + 1

collatz :: Int -> [Int]
collatz = iterate collatzNext

collatzFinite :: Int -> [Int]
collatzFinite n = takeWhileInclusive (/=1) $ collatz n

main = print $ fst $ maximumBy (comparing snd) $ map (\x -> (x, (length . collatzFinite) x)) [1..999999] 
