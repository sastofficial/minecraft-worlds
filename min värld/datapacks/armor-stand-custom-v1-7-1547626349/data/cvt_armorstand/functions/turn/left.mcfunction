tp @s ~ ~ ~ ~-5 ~
playsound minecraft:block.piston.extend master @a
tag @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:sticky_piston",Count:1b}},tag=!cvt_rotated] add cvt_rotated