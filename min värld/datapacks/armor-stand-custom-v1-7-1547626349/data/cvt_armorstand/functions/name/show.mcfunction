data merge entity @s {CustomNameVisible:1b}
playsound minecraft:entity.experience_orb.pickup master @a
kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:sign",Count:1b}},tag=!cvt_removed]