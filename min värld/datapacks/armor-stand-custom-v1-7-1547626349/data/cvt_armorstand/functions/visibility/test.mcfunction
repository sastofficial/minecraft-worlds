execute as @e[tag=cvt_ready,nbt={Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion: "minecraft:long_invisibility"}}}] run function cvt_armorstand:visibility/hide
execute as @e[tag=cvt_ready,nbt={Invisible:1b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:milk_bucket",Count:1b}}] run function cvt_armorstand:visibility/show