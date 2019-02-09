execute store result score ox cas_pos run data get entity @s Pos[0] 100
execute store result score oy cas_pos run data get entity @s Pos[1] 100
execute store result score oz cas_pos run data get entity @s Pos[2] 100
tp @s ^ ^ ^1
execute store result score dx cas_pos run data get entity @s Pos[0] 100
execute store result score dy cas_pos run data get entity @s Pos[1] 100
execute store result score dz cas_pos run data get entity @s Pos[2] 100
scoreboard players operation dx cas_pos -= ox cas_pos
scoreboard players operation dy cas_pos -= oy cas_pos
scoreboard players operation dz cas_pos -= oz cas_pos
execute if score dx cas_pos matches 0 run scoreboard players set dx cas_pos 1
execute if score dy cas_pos matches 0 run scoreboard players set dy cas_pos 1
execute if score dz cas_pos matches 0 run scoreboard players set dz cas_pos 1
scoreboard players set dxy cas_pos 10000
scoreboard players set dyz cas_pos 10000
scoreboard players set dzx cas_pos 10000
scoreboard players operation dxy cas_pos /= dy cas_pos
scoreboard players operation dyz cas_pos /= dz cas_pos
scoreboard players operation dzx cas_pos /= dx cas_pos
scoreboard players operation dzy cas_pos = dxy cas_pos
scoreboard players operation dxz cas_pos = dyz cas_pos
scoreboard players operation dyx cas_pos = dzx cas_pos
scoreboard players operation dxy cas_pos *= dx cas_pos
scoreboard players operation dxz cas_pos *= dx cas_pos
scoreboard players operation dyx cas_pos *= dy cas_pos
scoreboard players operation dyz cas_pos *= dy cas_pos
scoreboard players operation dzx cas_pos *= dz cas_pos
scoreboard players operation dzy cas_pos *= dz cas_pos
tag @s remove casPosition
kill @s