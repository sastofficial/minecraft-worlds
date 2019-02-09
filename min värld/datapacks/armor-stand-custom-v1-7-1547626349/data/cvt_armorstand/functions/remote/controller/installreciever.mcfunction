execute as @e[tag=cvt_ready,tag=!cvt_installed] at @s if entity @s[nbt={HandItems:[{id:"minecraft:tripwire_hook",Count:1b,tag:{cvt_remotereciever:1b}},{}]}] run tag @s add cvt_installed
execute as @e[tag=cvt_installed] at @s if entity @s[nbt=!{HandItems:[{id:"minecraft:tripwire_hook",Count:1b,tag:{cvt_remotereciever:1b}},{}]}] run tag @s remove cvt_installed
execute as @e[tag=cvt_installed] at @s if entity @s[tag=!cvt_ready] run tag @s remove cvt_installed
execute as @e[tag=cvt_installed] at @s run particle minecraft:dust 255 0 0 2 ~ ~ ~ 0 0 0 0 1 normal