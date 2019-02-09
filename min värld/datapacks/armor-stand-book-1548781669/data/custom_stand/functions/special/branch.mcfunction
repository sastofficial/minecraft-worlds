execute if score @s[tag=!casGlowing] cas_click matches 1 run data merge entity @s {Glowing:0b}
execute if score @s cas_click matches 1.. run scoreboard players remove @s cas_click 1
execute if entity @s[tag=casSpin] run tp @s ~ ~ ~ ~3.6 0
execute if entity @s[tag=casDisco] run function custom_stand:special/disco
execute if entity @s[tag=casLook] if entity @p[distance=..25] run function custom_stand:special/look
execute if score @s[tag=!casSpin,tag=!casDisco,tag=!casLook] cas_click matches 0 run tag @s remove casTick