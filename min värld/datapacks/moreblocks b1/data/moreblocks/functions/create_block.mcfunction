#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------CHECK CORRECT SKULL SETUP---------#
execute store success score @s MatchedHead as @e[name="StringMatcher"] run data modify entity @s Tags[1] set from block ~ ~ ~ Owner.Properties.textures[0].Value
execute at @s if entity @s[tag=!UnselBlockPlace] as @e[name="StringMatcher"] run data modify entity @s Tags[0] set from entity @e[distance=0,limit=1] SelectedItem.tag.SkullOwner.Properties.textures[0].Value
#-------CHECK CORRECT SKULL PLAYER---------#
execute at @s if entity @s[tag=UnselBlockPlace] as @e[tag=PlayerItem] if score @s BlockPlayerID = @e[distance=0,limit=1] BlockPlayerID run tag @s add UnselBlockPlace2
execute at @s if entity @s[tag=UnselBlockPlace] as @e[name="StringMatcher"] run data modify entity @s Tags[0] set from entity @e[tag=UnselBlockPlace2,limit=1] HandItems[0].tag.SkullOwner.Properties.textures[0].Value
execute at @s if entity @s[tag=UnselBlockPlace] as @e[tag=PlayerItem] if score @s BlockPlayerID = @e[distance=0,limit=1] BlockPlayerID run tag @s remove UnselBlockPlace2
#--------CHECK CORRECT SKULL RESET---------#
execute store success score @s MatchedHead as @e[name="StringMatcher"] run data modify entity @s Tags[1] set from block ~ ~ ~ Owner.Properties.textures[0].Value
tag @e[name="StringMatcher"] add Temp2
execute unless data block ~ ~ ~ Owner.Properties.textures[0].Value run scoreboard players set @s MatchedHead 1
#-------------VALIDATED SKULLS-------------#
execute if score @s MatchedHead matches 0 run function moreblocks:create_blockvalid
#------------------------------------------#