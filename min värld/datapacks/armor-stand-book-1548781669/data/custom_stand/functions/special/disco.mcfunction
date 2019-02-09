execute if score @s cas_click matches 200 run team join orange
execute if score @s cas_click matches 160 run team join yellow
execute if score @s cas_click matches 120 run team join green
execute if score @s cas_click matches 80 run team join blue
execute if score @s cas_click matches 40 run team join purple
execute if score @s cas_click matches 0 run team join red
scoreboard players set @s[scores={cas_click=0}] cas_click 240