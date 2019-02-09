execute if entity @s[tag=!casSelected] run tellraw @s {"text":"No armor stand selected.","color":"red"}
execute if entity @s[tag=casSelected] run tellraw @s {"text":"Armor stand deselected.","color":"green"}
tag @s remove casSelected