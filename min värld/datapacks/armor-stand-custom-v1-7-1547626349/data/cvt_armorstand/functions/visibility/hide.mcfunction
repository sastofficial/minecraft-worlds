data merge entity @s {Invisible:1b}
playsound minecraft:entity.generic.drink master @a
data merge entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion: "minecraft:long_invisibility"}}}] {Item:{id:"minecraft:glass_bottle"}}