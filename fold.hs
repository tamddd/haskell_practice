myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
  where newInit = f init x



myElem val myList = (length filterdList) /= 0
  where filterdList = filter (== val) myList


myPalindrome text = processedText == reverse processedText
  where noSpaces = filter (/='') text
        processedText = map toLower noSpaces