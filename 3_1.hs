
doubleDouble x = (\dubs->dubs*2) (x*2)

sumSquareOrSquareSum x y = (\sumSquare squareSum ->
    if sumSquare > squareSum
        then sumSquare
        else squareSum)