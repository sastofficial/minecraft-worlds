#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------LISTINGS------------------#
gamerule sendCommandFeedback false
scoreboard players set @s CurrentPage 4
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s ["",{"text":"#---------------------------------------#\n"},{"text":"Avaliable Blocks:\n","color":"aqua","bold":true},{"text":"Page 4","color":"aqua","italic":true}]
tellraw @s ["",{"text":"<-Page 3 ","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function moreblocks:print/page3"},"bold":false}]
execute at @e[tag=BlockSave,scores={BlockSaveID=16}] run tellraw @s ["",{"text":"[Info]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to see block information.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=16}] run function moreblocks:info_command"},"bold":false},{"text":" [Get]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to get the block.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=16}] run function moreblocks:get_command"},"bold":false},{"text":" [Remove]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click remove the block from the block save system.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/kill @e[tag=BlockSave,scores={BlockSaveID=16}]"},"bold":false},{"text":" - ","color":"none","bold":false},{"selector":"@e[tag=BlockSave,scores={BlockSaveID=16}]","color":"white","bold":true}]
execute at @e[tag=BlockSave,scores={BlockSaveID=17}] run tellraw @s ["",{"text":"[Info]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to see block information.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=17}] run function moreblocks:info_command"},"bold":false},{"text":" [Get]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to get the block.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=17}] run function moreblocks:get_command"},"bold":false},{"text":" [Remove]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click remove the block from the block save system.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/kill @e[tag=BlockSave,scores={BlockSaveID=17}]"},"bold":false},{"text":" - ","color":"none","bold":false},{"selector":"@e[tag=BlockSave,scores={BlockSaveID=17}]","color":"white","bold":true}]
execute at @e[tag=BlockSave,scores={BlockSaveID=18}] run tellraw @s ["",{"text":"[Info]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to see block information.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=18}] run function moreblocks:info_command"},"bold":false},{"text":" [Get]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to get the block.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=18}] run function moreblocks:get_command"},"bold":false},{"text":" [Remove]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click remove the block from the block save system.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/kill @e[tag=BlockSave,scores={BlockSaveID=18}]"},"bold":false},{"text":" - ","color":"none","bold":false},{"selector":"@e[tag=BlockSave,scores={BlockSaveID=18}]","color":"white","bold":true}]
execute at @e[tag=BlockSave,scores={BlockSaveID=19}] run tellraw @s ["",{"text":"[Info]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to see block information.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=19}] run function moreblocks:info_command"},"bold":false},{"text":" [Get]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to get the block.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=19}] run function moreblocks:get_command"},"bold":false},{"text":" [Remove]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click remove the block from the block save system.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/kill @e[tag=BlockSave,scores={BlockSaveID=19}]"},"bold":false},{"text":" - ","color":"none","bold":false},{"selector":"@e[tag=BlockSave,scores={BlockSaveID=19}]","color":"white","bold":true}]
execute at @e[tag=BlockSave,scores={BlockSaveID=20}] run tellraw @s ["",{"text":"[Info]","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to see block information.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=20}] run function moreblocks:info_command"},"bold":false},{"text":" [Get]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to get the block.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/execute at @s as @e[tag=BlockSave,scores={BlockSaveID=20}] run function moreblocks:get_command"},"bold":false},{"text":" [Remove]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click remove the block from the block save system.","color":"white"}]}},"clickEvent":{"action":"run_command","value":"/kill @e[tag=BlockSave,scores={BlockSaveID=20}]"},"bold":false},{"text":" - ","color":"none","bold":false},{"selector":"@e[tag=BlockSave,scores={BlockSaveID=20}]","color":"white","bold":true}]
execute at @e[tag=BlockSave,scores={BlockSaveID=21}] run tellraw @s ["",{"text":"              Page 5-> ","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function moreblocks:print/page5"},"bold":false}]
tellraw @s [{"text":"#---------------------------------------#","color":"none"}]
schedule function moreblocks:gameruleon 1s
#------------------------------------------#
