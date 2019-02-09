data merge entity @s {Small:0b}
playsound minecraft:entity.experience_orb.pickup master @a
kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}]