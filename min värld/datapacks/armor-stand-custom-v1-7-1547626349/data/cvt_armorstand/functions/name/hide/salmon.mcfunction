data merge entity @s {CustomNameVisible:0b}
playsound minecraft:item.bucket.empty master @a
particle minecraft:splash ~ ~ ~ 0.5 0.5 0.5 0.00001 500 force @a
data merge entity @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:salmon_bucket",Count:1b}}] {Item:{id:"minecraft:bucket"}}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:sign",Count:1b},Tags:["cvt_removed"]}
execute unless block ~ ~ ~ minecraft:water run advancement grant @p[distance=..3] only cvt_armorstand:spawn_fish
summon minecraft:salmon ~ ~ ~ {FromBucket:1b}