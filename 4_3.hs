ifEven myFunction x = if even x 
    then myFunction x
    else x

inc n = n + 1
double n = n * 2
square n = n ^ 2

ifEvenSquare n = ifEven square n 
ifEvenInc n = (\x -> x+1)n
ifEvenDouble n = (\x -> x*2)n
ifEvenTriple n = (\x -> x^3)n


getIfEven f = (\x -> ifEven f x)
--関数を渡すと、ラムダ関数が帰ってくる。

genIfXEven x = (\f -> ifEven f x)