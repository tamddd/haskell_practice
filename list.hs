--コンストラクト construct 
-- : コンス

-- !! 引数として、リストと位置を表す数値を受け取り、
--リストの指定された位置にある要素を返す。

-- [1, 2, 3] !! 0
-- 1

-- elem 引数として値とリストを受け取り、その値がリストに含まれているかどうかをチェック
respond phrase = if '!' `elem` phrase
  then "wow!"
  else "uh.. okay"

-- elem 13 [0, 13..100]
-- True

--take 引数として数値とリストを受け取り、リストの先頭から指定された数の要素を取り出す
-- take 5 [2, 4..100]
-- [2, 4, 6, 8, 10]
takeLast n alist = reverse (take n (reverse alist))

-- drop リストの先頭から指定された個数の要素を削除

assignToGroups n aList = zip groups aList
  where groups = cycle [1..n]


repeat_ n = cycle [n]

subseq start end aList = take difference (drop start aList)
  where difference = end - start

inFirstHalf value aList = elem value halfList
  where half = (length aList) `div` 2
        halfList = take half aList

inFirstHalf val myList = val `elem` firstHalf 
  where midpoint = (length myList) `div` 2
        firstHalf = take midpoint myList