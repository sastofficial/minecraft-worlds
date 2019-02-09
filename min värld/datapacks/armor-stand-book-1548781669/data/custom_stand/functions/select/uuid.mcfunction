execute store result score @s cas_uuidleast_q run data get entity @s UUIDLeast 0.00000000023283064365386962890625
execute store result score @s cas_uuidmost_q run data get entity @s UUIDMost 0.00000000023283064365386962890625
scoreboard players operation @p[tag=casTemp] cas_uuidleast_q = @s cas_uuidleast_q
scoreboard players operation @p[tag=casTemp] cas_uuidmost_q = @s cas_uuidmost_q
tag @p[tag=casTemp] add casSelected
scoreboard players set @s cas_click 30
data merge entity @s {Glowing:1b}
tag @s[tag=!casGlowing] add casTick
tag @s add casTemp
execute store result score x cas_rot run data get entity @s Pos[0] 1
execute store result score y cas_rot run data get entity @s Pos[1] 1
execute store result score z cas_rot run data get entity @s Pos[2] 1
tellraw @p[tag=casTemp] ["",{"text":"Selected armor stand at [","color":"green"},{"score":{"name":"x","objective":"cas_rot"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"y","objective":"cas_rot"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"z","objective":"cas_rot"},"color":"green"},{"text":"].","color":"green"}]