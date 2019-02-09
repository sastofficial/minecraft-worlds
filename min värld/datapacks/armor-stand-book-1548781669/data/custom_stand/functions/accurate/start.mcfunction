scoreboard players add @s cas_click 100
scoreboard players set @s rotation_x -361
scoreboard players set @s rotation_y -361
scoreboard players set @s rotation_z -361
scoreboard players enable @s rotation_x
scoreboard players enable @s rotation_y
scoreboard players enable @s rotation_z
tellraw @s[scores={cas_click=129..}] ["",{"text":"Rotate around X axis:\n","color":"dark_green"},{"text":"/trigger rotation_x set [Rotation in degrees]","color":"green"}]
tellraw @s ["",{"text":"Rotate around Y axis:\n","color":"dark_aqua"},{"text":"/trigger rotation_y set [Rotation in degrees]","color":"aqua"}]
tellraw @s[scores={cas_click=129..}] ["",{"text":"Rotate around Z axis:\n","color":"dark_blue"},{"text":"/trigger rotation_z set [Rotation in degrees]","color":"blue"}]