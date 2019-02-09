# get player coordinates
execute store result score @s ex_info.x run data get entity @s Pos[0]
execute store result score @s ex_info.z run data get entity @s Pos[2]

# update players action bar
title @s times 0 1 1
title @s actionbar [{"text": "Coordinates: x: "}, {"score":{"name": "@s", "objective": "ex_info.x"}}, {"text": ", z: "}, {"score":{"name": "@s", "objective": "ex_info.z"}}]