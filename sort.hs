import Data.List

names = [("Ian", "Curtis"),
         ("Bernard", "Curtis"),
         ("Peter", "Hook"),
         ("Stephten", "Moriss")]




compareLastNames name1 name2 = if result == EQ
  then compare firstName1 firstName2
  else result

  where result = compare lastName1 lastName2
        lastName1 = snd name1
        lastName2 = snd name2
        firstName1 = fst name1
        firstName2 = fst name2

