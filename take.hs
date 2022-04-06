--take関数
--引数として、nとリストの2つを受け取る
-- 終了条件二つ
--   1 空のリスト
--   2 n=0の場合

myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x:rest
  where rest = myTake (n-1) xs