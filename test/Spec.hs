main :: IO ()
main = do
  print reverseList
  print tuple

list :: [Int]
list = [1, 2, 3, 4, 5]

reverseList :: [Int]
reverseList = reverse list

tuple :: (Int, Bool, String)
tuple = (10, True, "改行")
