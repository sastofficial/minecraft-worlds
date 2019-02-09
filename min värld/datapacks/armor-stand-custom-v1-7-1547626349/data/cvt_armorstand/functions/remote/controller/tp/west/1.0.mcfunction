execute as @e[tag=cvt_installed] at @s run tp @s ~-1 ~ ~
execute as @e[tag=cvt_installed] at @s run playsound minecraft:entity.boat.paddle_land master @a
scoreboard players add @s cvt_tpdistance 100
scoreboard players reset @s cvt_tpsignal