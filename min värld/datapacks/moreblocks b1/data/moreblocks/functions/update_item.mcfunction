#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------UPDATING------------------#
data modify entity @e[distance=0,limit=1] Item set from entity @s HandItems[0]
data modify entity @e[distance=0,limit=1] Item.tag.CustomModelData set value 1
#------------------------------------------#