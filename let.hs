sumSquareOrSquareSum x y = let sumSquare = (x^2 + y^2)
                               squareSum = (x + y)^2
                            in
                             if sumSquare > squareSum
                                then sumSquare
                                else squareSum





overwrite x = (\x -> 
    (\x ->
        (\x -> x) 4
        )3
    )2


makeChange = (\owed given ->
    if given - owed > 0
        then given - owed
        else 0)