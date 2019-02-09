#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------TNESW TP------------------#
execute at @s run tp @s ~ ~ ~1
function moreblocks:pistons/destroyedonpush
execute at @s unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:carved_pumpkin"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:jack_o_lantern"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:oak_leaves"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:melon"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:pumpkin"}},{}]}] unless entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:scaffolding"}},{}]}] run tag @e[type=armor_stand,tag=CustomBlock,distance=..0.5] add TNESW_SOUTH
tag @s remove TNESW_SOUTH
#------------------------------------------#