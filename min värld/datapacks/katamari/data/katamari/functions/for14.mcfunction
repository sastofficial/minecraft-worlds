scoreboard players set @s scratch0 1
execute at @s positioned ~ ~1.6 ~ positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"\"Marker\"", "Marker":1b, "Invisible":1b, "NoGravity":1b, "Invulnerable":1b}
scoreboard players set @e[type=minecraft:armor_stand,name=Marker,limit=1] nonstick 1
execute as @e[type=minecraft:armor_stand,name=Marker,limit=1] run function katamari:execute4
scoreboard players operation Global _id = @s ball
execute as @e if score @s _id = Global _id run function katamari:execute13
kill @e[type=minecraft:armor_stand,name=Marker,limit=1]
scoreboard players set @s scratch0 0