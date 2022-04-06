--1 最終目標を特定
--2 最終目標が達成されたらどうなるかを決める
--3 他の可能性を全て洗い出す
--4 繰り返しのプロセスを決める
--5 繰り返しのたびに最終目標に近づくようにする


myGCD a b = if remainder == 0
    then b
    else myGCD b remainder
  where remainder = a `mod` b


myGCD a b = myGCD b (a `mod` b)
myGCD a 0 = a


sayAmount n = case n of 
  1 -> "one"
  2 -> "two"
  n -> "a bunch"

isEmpty [] = True
isEmpty _ = False

myHead (x:xs) = x


myTail (_:xs) = xs
myTail [] = []