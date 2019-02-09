#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------GET COMMAND----------------#
gamerule sendCommandFeedback false
tellraw @a[distance=0,limit=1] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
tellraw @a[distance=0,limit=1] ["",{"text":"#---------------------------------------#\n"},{"text":"Information for ","color":"aqua","bold":true},{"selector":"@s","color":"aqua","bold":true}]
tellraw @a[distance=0,limit=1] ["",{"text":"<-Return \n","color":"dark_red","clickEvent":{"action":"run_command","value":"/function moreblocks:return_page"},"bold":false}]
tellraw @a[distance=0,limit=1] ["",{"text":"NAME: "},{"selector":"@s","color":"green"}]
tellraw @a[distance=0,limit=1] ["",{"text":"LOOK: "},{"text":"Get the block to view"}]
execute if entity @s[nbt={HandItems:[{tag:{BlockVarDirectional:1}},{}]}] run tellraw @a[distance=0,limit=1] ["",{"text":"DIRECTIONAL: "},{"text":"Yes","color":"green","bold":false}]
execute unless entity @s[nbt={HandItems:[{tag:{BlockVarDirectional:1}},{}]}] run tellraw @a[distance=0,limit=1] ["",{"text":"DIRECTIONAL: "},{"text":"No","color":"green","bold":false}]
setblock 0 2 0 air
setblock 0 2 0 command_block
data modify block 0 2 0 Command set from entity @s HandItems[0].tag.StatMessage
data merge block 0 2 0 {auto:1b}
schedule function moreblocks:gameruleon 1s
#------------------------------------------#