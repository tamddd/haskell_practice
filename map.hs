-- map ("a " ++) ["train", "plane", "boat"]

addAnA [] = []
addAnA (x:xs) = ("a " ++ x):addAnA xs

-- map (^2) [1, 2, 3]
squareAll [] = []
squareAll (x:xs) = (x ^ 2):squareAll xs


myMap f [] = []
myMap f (x:xs) = (f x):myMap f xs

--filter even [1, 2, 3, 4]

--filter (\(x:xs) -> x == 'a') ["apple", "banana", "avocado"]

myFilter test [] = []
myFilter test (x:xs) = if test x
  then x:myFilter test xs
  else myFilter test xs


myRemove cond [] = []
myRemove cond (x:xs) = if cond x
  then myRemove cond xs
  else x:myRemove cond xs


myProduct xs = foldl (*) 1 xs

concatAll xs = foldl (++) "" xs

sumOfSequence xs = foldl (+) 0 (map (^2) xs)

rcons x y = y;x
myReverse xs = foldl rcons [] xs