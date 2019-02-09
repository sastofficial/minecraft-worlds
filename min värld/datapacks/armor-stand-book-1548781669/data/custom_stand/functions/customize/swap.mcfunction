summon minecraft:armor_stand ~ -200 ~ {Tags:["casTempkill"],HandItems:[{},{}],Invisible:1b}
data modify entity @e[type=minecraft:armor_stand,tag=casTempkill,limit=1] HandItems[0] set from entity @s HandItems[1]
data modify entity @s HandItems[1] set from entity @s HandItems[0]
data modify entity @s HandItems[0] set from entity @e[type=minecraft:armor_stand,tag=casTempkill,limit=1] HandItems[0]
kill @e[type=minecraft:armor_stand,tag=casTempkill,limit=1]
tag @e[type=minecraft:armor_stand,tag=casTempkill,limit=1] remove casTempkill
execute store success score checkr cas_pos run data get entity @s HandItems[0].Count
execute store success score checkl cas_pos run data get entity @s HandItems[1].Count
execute if score checkr cas_pos matches 0 if score checkl cas_pos matches 0 run tellraw @p[tag=casTemp] {"text":"Selected armor stand not holding any items.","color":"red"}