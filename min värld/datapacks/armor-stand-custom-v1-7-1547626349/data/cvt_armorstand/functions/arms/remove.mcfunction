data merge entity @s {ShowArms:0b}
playsound minecraft:entity.zombie.break_wooden_door master @a
execute if entity @s[nbt={Small:0b}] run summon minecraft:item ~ ~1.3 ~ {Item:{id:"minecraft:stick",Count:2b},Tags:["cvt_removed"]}
execute if entity @s[nbt={Small:1b}] run summon minecraft:item ~ ~0.7 ~ {Item:{id:"minecraft:stick",Count:2b},Tags:["cvt_removed"]}

# For Posing
scoreboard players reset @s cvt_headpose
scoreboard players reset @s cvt_bodypose
scoreboard players reset @s cvt_leftarmpose
scoreboard players reset @s cvt_rightarmpose
scoreboard players reset @s cvt_leftlegpose
scoreboard players reset @s cvt_rightlegpose