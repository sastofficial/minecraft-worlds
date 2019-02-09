execute as @e[tag=cvt_ready,nbt={ShowArms:0b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:stick",Count:2b}},tag=!cvt_removed] run function cvt_armorstand:arms/add
execute as @e[tag=cvt_ready,nbt={ShowArms:1b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:wooden_axe"}}] run function cvt_armorstand:arms/remove
execute as @e[tag=cvt_ready,nbt={ShowArms:1b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:stone_axe"}}] run function cvt_armorstand:arms/remove
execute as @e[tag=cvt_ready,nbt={ShowArms:1b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:iron_axe"}}] run function cvt_armorstand:arms/remove
execute as @e[tag=cvt_ready,nbt={ShowArms:1b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:golden_axe"}}] run function cvt_armorstand:arms/remove
execute as @e[tag=cvt_ready,nbt={ShowArms:1b,Invisible:0b}] at @s if entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:diamond_axe"}}] run function cvt_armorstand:arms/remove
