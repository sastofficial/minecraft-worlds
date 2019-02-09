data merge entity @s {Invisible:0b}
playsound minecraft:entity.generic.drink master @a
data merge entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:milk_bucket",Count:1b}}] {Item:{id:"minecraft:bucket"}}