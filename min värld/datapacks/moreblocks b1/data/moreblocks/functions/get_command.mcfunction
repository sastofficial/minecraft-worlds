#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------GET COMMAND----------------#
gamerule sendCommandFeedback false
scoreboard players set @s BlockSaveGet 1
function moreblocks:return_page
execute as @e[distance=0,limit=1] run tellraw @s ["",{"text":"Enjoy your block!\n#---------------------------------------#","color":"white"}]
schedule function moreblocks:gameruleon 1s
#------------------------------------------#