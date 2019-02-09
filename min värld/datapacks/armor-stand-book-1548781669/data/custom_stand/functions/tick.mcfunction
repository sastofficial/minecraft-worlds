execute as @a[scores={cas_click=1..55}] at @s run function custom_stand:branch
execute as @a[scores={cas_click=128..}] at @s run function custom_stand:accurate/branch
execute as @e[type=minecraft:armor_stand,tag=casTick] at @s run function custom_stand:special/branch
execute as @e[type=minecraft:item,tag=!casItem] at @s run function custom_stand:item
scoreboard players enable @a cas_click