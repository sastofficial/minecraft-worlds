execute as @e[tag=cvt_ready,nbt={NoBasePlate:0b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:wooden_pickaxe"}}] run function cvt_armorstand:plate/remove
execute as @e[tag=cvt_ready,nbt={NoBasePlate:0b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:stone_pickaxe"}}] run function cvt_armorstand:plate/remove
execute as @e[tag=cvt_ready,nbt={NoBasePlate:0b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:iron_pickaxe"}}] run function cvt_armorstand:plate/remove
execute as @e[tag=cvt_ready,nbt={NoBasePlate:0b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:golden_pickaxe"}}] run function cvt_armorstand:plate/remove
execute as @e[tag=cvt_ready,nbt={NoBasePlate:0b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] run function cvt_armorstand:plate/remove
execute as @e[tag=cvt_ready,nbt={NoBasePlate:1b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:stone_slab",Count:1b}},tag=!cvt_removed] run function cvt_armorstand:plate/add