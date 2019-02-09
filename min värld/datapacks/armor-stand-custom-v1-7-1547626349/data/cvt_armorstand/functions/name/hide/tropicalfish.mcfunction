data merge entity @s {CustomNameVisible:0b}
playsound minecraft:item.bucket.empty master @a
particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 0.00001 500 force @a
data merge entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:tropical_fish_bucket",Count:1b}}] {Item:{id:"minecraft:bucket"},Tags:["cvt_emptied"]}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b},Tags:["cvt_removed"]}
summon minecraft:tropical_fish ~ ~ ~ {FromBucket:1b,Tags:["cvt_splashed"]}
execute as @e[tag=cvt_emptied,limit=1] at @s store result entity @e[tag=cvt_splashed,limit=1] Variant double 1 run data get entity @s Item.tag.BucketVariantTag
execute unless block ~ ~ ~ minecraft:water run advancement grant @p[distance=..3] only cvt_armorstand:spawn_fish