tag @s add casTemp
playsound minecraft:ui.button.click master @s
execute if score @s cas_click matches 1 run function custom_stand:select/deselect
execute if score @s cas_click matches 2 run function custom_stand:select/nearest
execute if score @s cas_click matches 3 run function custom_stand:select/facing
execute if score @s[tag=casSelected] cas_click matches 4..13 run function custom_stand:customize/general
execute if score @s[tag=casSelected] cas_click matches 14..20 run function custom_stand:customize/rotate_at
execute if score @s[tag=casSelected] cas_click matches 21..27 run function custom_stand:customize/rotate_as
execute if score @s[tag=casSelected] cas_click matches 28..34 run function custom_stand:accurate/start
execute if score @s[tag=casSelected] cas_click matches 35..55 run function custom_stand:customize/position
execute if score @s[tag=!casSelected] cas_click matches 4.. run tellraw @s {"text":"No armor stand selected.","color":"red"}
tag @s remove casTemp
scoreboard players set @s[scores={cas_click=..127}] cas_click 0