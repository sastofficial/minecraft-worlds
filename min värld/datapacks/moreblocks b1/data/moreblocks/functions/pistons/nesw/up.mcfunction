#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------TNESW TP------------------#
execute at @s run tp @s ~ ~1 ~
function moreblocks:pistons/destroyedonpush
execute at @s unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:carved_pumpkin"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:jack_o_lantern"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:oak_leaves"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:melon"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:pumpkin"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:scaffolding"}},{}]}] run tag @e[type=armor_stand,tag=CustomBlock,distance=..0.5] add TNESW_UP

#store success score @s PistonMixedRow
#execute at @s if score @s PistonMixedRow matches 0 positioned ~ ~1 ~ unless block ~ ~ ~ #moreblocks:nonfullblocks as @e[type=armor_stand,tag=CustomBlock,distance=..0.5] if score @s PistonSpace2 matches 1.. unless score @s PistonSpace1 matches 1.. store success score @s PistonMixedRow run tag @s add TNESW_UP
#execute at @s if score @s PistonMixedRow matches 0 positioned ~ ~1 ~ unless block ~ ~ ~ #moreblocks:nonfullblocks as @e[type=armor_stand,tag=CustomBlock,distance=..0.5] unless score @s PistonSpace2 matches 1.. unless score @s PistonSpace1 matches 1.. store success score @s PistonMixedRow run tag @s add TNESW_UP
#scoreboard players reset @s PistonMixedRow

tag @s remove TNESW_UP
#------------------------------------------#