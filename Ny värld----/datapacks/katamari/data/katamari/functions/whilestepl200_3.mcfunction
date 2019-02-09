execute as @s at @s rotated as @s run tp @s ~ ~-0.1 ~
execute at @s unless block ~ ~ ~ minecraft:air run scoreboard players set Global step 200
scoreboard players add Global step 1
execute if score Global step matches ..199 run function katamari:whilestepl200_3