-- 名前
--　攻撃力 
-- HP

robot (name, attack, hp) = \message -> message (name, attack, hp)
name (n,_,_) = n
attack (_,a,_) = a
hp (_,_,hp) = hp

killerRobot = robot ("kill3r", 25, 200)
getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

setName aRobot newName = aRobot (\(n,a,h) -> robot(newName,a,h))
setAttack aRobot newAttack = aRobot (\(n,a,h) -> robot(n,newAttack,h))
setHP aRobot newHP = aRobot (\(n,a,h) -> robot(n,a,newHP))

printRobot aRobot = aRobot (\(n,a,h) -> n ++
                        " attack:" ++ (show a) ++
                        " hp:" ++ (show h))

damage aRobot attackDamege = aRobot (\(n,a,h) ->
                      robot(n,a,h-attackDamege))


fight aRobot defender = damage defender attack
  where attack = if getHP aRobot > 10
        then getAttack aRobot
        else 0