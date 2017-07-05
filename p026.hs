import Data.List (maximumBy)
import Data.Function (on)

dup :: Ord a => [a] -> Maybe a
dup xs = dup' xs []
    where dup' [] _ = Nothing
          dup' (x:xs) s = if x `elem` s 
                             then Just x
                             else dup' xs (x:s)

remCycle n d = (q, r) : remCycle (r*10) d
  where
    (q, r) = quotRem n d
    
cycleLength :: [(Int, Int)] -> Int
cycleLength c = case dup c of Nothing -> 0
                              Just x -> distanceToDup x (tail (dropWhile (/=x) c)) 1
                              where
                                distanceToDup n (x:xs) counter
                                  | n == x = counter
                                  | otherwise = distanceToDup n xs (counter + 1)

main = print $ fst $ maximumBy (compare `on` snd) $ map (\x -> (x, cycleLength $ remCycle 1 x)) [2..999]
