data merge entity @s {Glowing:1b}
playsound minecraft:entity.experience_orb.pickup master @a
kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:spectral_arrow",Count:10b}}]