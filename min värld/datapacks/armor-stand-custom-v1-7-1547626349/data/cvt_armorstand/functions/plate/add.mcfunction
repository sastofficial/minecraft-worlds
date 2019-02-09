data merge entity @s {NoBasePlate:0b}
playsound minecraft:block.stone.place master @a
kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:stone_slab",Count:1b}},tag=!cvt_removed]