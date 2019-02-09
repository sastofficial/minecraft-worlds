data merge entity @s {DisabledSlots:0}
playsound block.iron_door.open master @a
execute if entity @s[nbt={Small:1b}] run particle minecraft:happy_villager ~ ~1.7 ~ 0.2 0.2 0.2 0 100 normal @a
execute if entity @s[nbt={Small:0b}] run particle minecraft:happy_villager ~ ~2.6 ~ 0.2 0.2 0.2 0 100 normal @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:lever",Count:1b}},tag=!cvt_powered] add cvt_powered
tag @s remove cvt_locked