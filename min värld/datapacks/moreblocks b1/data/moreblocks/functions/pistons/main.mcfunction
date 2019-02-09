#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------PISTONS SETUP----------------#
execute as @e[type=armor_stand,tag=CustomBlock,scores={RemoveBlockWait=..0}] at @s if block ~ ~ ~ air run scoreboard players set @s RemoveBlockWait 4
execute as @e[type=armor_stand,tag=CustomBlock] at @s unless block ~ ~ ~ air run scoreboard players reset @s RemoveBlockWait
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ air run scoreboard players remove @s RemoveBlockWait 1
#------------PISTON PUSHING----------------#
#execute as @e[type=armor_stand,tag=CustomBlock,scores={PistonSpace1=1..}] run scoreboard players remove @s PistonSpace1 1
#execute as @e[type=armor_stand,tag=CustomBlock,scores={PistonSpace2=1..}] run scoreboard players remove @s PistonSpace2 1
#execute as @e[type=armor_stand,tag=CustomBlock,scores={PistonSpace3=1..}] run scoreboard players remove @s PistonSpace3 1
#execute as @e[type=armor_stand,tag=CustomBlock,scores={PistonSpace4=1..}] run scoreboard players remove @s PistonSpace4 1
#execute as @e[type=armor_stand,tag=CustomBlock,scores={PistonSpace5=1..}] run scoreboard players remove @s PistonSpace5 1
#execute as @e[type=armor_stand,tag=CustomBlock,scores={PistonSpace6=1..}] run scoreboard players remove @s PistonSpace6 1

#execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~-1 ~ #moreblocks:allowed run scoreboard players set @s PistonSpace1 4
#execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~1 ~ #moreblocks:allowed run scoreboard players set @s PistonSpace2 4
#execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~-1 #moreblocks:allowed run scoreboard players set @s PistonSpace3 4
#execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~1 #moreblocks:allowed run scoreboard players set @s PistonSpace4 4
#execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~1 ~ ~ #moreblocks:allowed run scoreboard players set @s PistonSpace5 4
#execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~-1 ~ ~ #moreblocks:allowed run scoreboard players set @s PistonSpace6 4

execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~1 ~ #moreblocks:pistons[extended=true,facing=down] run tag @s add TNESW_DOWN
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~-1 ~ #moreblocks:pistons[extended=true,facing=up] run tag @s add TNESW_UP
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~1 #moreblocks:pistons[extended=true,facing=north] run tag @s add TNESW_NORTH
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~-1 #moreblocks:pistons[extended=true,facing=south] run tag @s add TNESW_SOUTH
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~-1 ~ ~ #moreblocks:pistons[extended=true,facing=east] run tag @s add TNESW_EAST
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~1 ~ ~ #moreblocks:pistons[extended=true,facing=west] run tag @s add TNESW_WEST

execute as @e[tag=TNESW_DOWN] at @s run function moreblocks:pistons/nesw/down
execute as @e[tag=TNESW_UP] at @s run function moreblocks:pistons/nesw/up
execute as @e[tag=TNESW_NORTH] at @s run function moreblocks:pistons/nesw/north
execute as @e[tag=TNESW_SOUTH] at @s run function moreblocks:pistons/nesw/south
execute as @e[tag=TNESW_EAST] at @s run function moreblocks:pistons/nesw/east
execute as @e[tag=TNESW_WEST] at @s run function moreblocks:pistons/nesw/west
#--------STICKY PISTON RETRACTING----------#
execute as @e[type=armor_stand,tag=CustomBlock,scores={StickyPos1=1..}] run scoreboard players remove @s StickyPos1 1
execute as @e[type=armor_stand,tag=CustomBlock,scores={StickyPos2=1..}] run scoreboard players remove @s StickyPos2 1
execute as @e[type=armor_stand,tag=CustomBlock,scores={StickyPos3=1..}] run scoreboard players remove @s StickyPos3 1
execute as @e[type=armor_stand,tag=CustomBlock,scores={StickyPos4=1..}] run scoreboard players remove @s StickyPos4 1
execute as @e[type=armor_stand,tag=CustomBlock,scores={StickyPos5=1..}] run scoreboard players remove @s StickyPos5 1
execute as @e[type=armor_stand,tag=CustomBlock,scores={StickyPos6=1..}] run scoreboard players remove @s StickyPos6 1

execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~2 ~ sticky_piston[extended=true,facing=down] run scoreboard players set @s StickyPos1 4
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~-2 ~ sticky_piston[extended=true,facing=up] run scoreboard players set @s StickyPos2 4
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~2 sticky_piston[extended=true,facing=north] run scoreboard players set @s StickyPos3 4
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~-2 sticky_piston[extended=true,facing=south] run scoreboard players set @s StickyPos4 4
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~2 ~ ~ sticky_piston[extended=true,facing=west] run scoreboard players set @s StickyPos5 4
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~-2 ~ ~ sticky_piston[extended=true,facing=east] run scoreboard players set @s StickyPos6 4

execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed unless block ~ ~1 ~ piston_head if block ~ ~2 ~ sticky_piston[facing=down] if entity @s[scores={StickyPos1=1..}] run tp @s ~ ~1 ~
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed unless block ~ ~-1 ~ piston_head if block ~ ~-2 ~ sticky_piston[facing=up] if entity @s[scores={StickyPos2=1..}] run tp @s ~ ~-1 ~
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed unless block ~ ~ ~1 piston_head if block ~ ~ ~2 sticky_piston[facing=north] if entity @s[scores={StickyPos3=1..}] run tp @s ~ ~ ~1
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed unless block ~ ~ ~-1 piston_head if block ~ ~ ~-2 sticky_piston[facing=south] if entity @s[scores={StickyPos4=1..}] run tp @s ~ ~ ~-1
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed unless block ~1 ~ ~ piston_head if block ~2 ~ ~ sticky_piston[facing=west] if entity @s[scores={StickyPos5=1..}] run tp @s ~1 ~ ~
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed unless block ~-1 ~ ~ piston_head if block ~-2 ~ ~ sticky_piston[facing=east] if entity @s[scores={StickyPos6=1..}] run tp @s ~-1 ~ ~
#------------------------------------------#