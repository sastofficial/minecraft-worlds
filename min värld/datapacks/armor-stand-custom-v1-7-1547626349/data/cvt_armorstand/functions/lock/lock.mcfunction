data merge entity @s {DisabledSlots:2039583}
playsound block.iron_door.close master @a
execute if entity @s[nbt={Small:1b}] run particle minecraft:barrier ~ ~1.7 ~ 0 0 0 1 1 normal @a
execute if entity @s[nbt={Small:0b}] run particle minecraft:barrier ~ ~2.6 ~ 0 0 0 1 1 normal @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:lever",Count:1b}},tag=!cvt_powered] add cvt_powered
tag @s add cvt_locked
tag @s remove cvt_ready