--関数を、引数として渡したり、値として返したりする。

addressLetter name location = locationFunction name
  where locationFunction = getLocationFunction location

sfOffice name = if lastName < "L"
  then nameText ++ "-PO Box 1234 - San Francisco, CA, 94111"
  else nameText ++ "-PO BOX 1010 - San Francisco, CA, 94109"

  where lastName = snd name
        nameText = (fst name) ++ " " ++ lastName


nyOffice name = nameText ++ ":PO Box 789 - New York, 10013"
  where nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ "-PO Box 456 - Reno, NV 89523"
  where nameText = snd name

wasOffice name = nameText ++ "-PO Box 1337 - Washington DC, 20001"
  where nameText =  (fst name) ++ " " ++ (snd name) ++ ",Esq"

getLocationFunction location = case location of 
    "ny" -> nyOffice
    "sf" -> sfOffice
    "reno" -> renoOffice
    "was" -> wasOffice
    _ -> (\name -> (fst name) ++ " " ++ (snd name))



flipBinaryArgs binaryFunction = (\x y -> binaryFunction y x)
addressLetterV2 = flipBinaryArgs addressLetter
addressLetterNY = addressLetterV2 "ny" 


subtract2 = flip (-) 2

binaryPartialApplication binaryFunc arg = (\x -> binaryFunc arg x)