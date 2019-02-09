#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------SETTING------------------#
execute at @s if entity @s[tag=UnselBlockPlace] as @e[tag=PlayerItem] if score @s BlockPlayerID = @e[distance=0,limit=1] BlockPlayerID run tag @s add UnselBlockPlace3
function moreblocks:update_dir
#-----------CREATE ARMOUR STAND------------#
execute if entity @s[tag=!UnselBlockPlace] unless entity @s[nbt={SelectedItem:{tag:{BlockVarDirectional:1}}}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @s[tag=UnselBlockPlace] unless entity @e[tag=UnselBlockPlace3,nbt={HandItems:[{tag:{BlockVarDirectional:1}},{}]}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
execute if entity @s[tag=!UnselBlockPlace,scores={BlockRotation=1},nbt={SelectedItem:{tag:{BlockVarDirectional:1}}}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Rotation:[270f,0f],Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
execute if entity @s[tag=UnselBlockPlace,scores={BlockRotation=1}] if entity @e[tag=UnselBlockPlace3,nbt={HandItems:[{tag:{BlockVarDirectional:1}},{}]}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Rotation:[270f,0f],Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
execute if entity @s[tag=!UnselBlockPlace,scores={BlockRotation=2},nbt={SelectedItem:{tag:{BlockVarDirectional:1}}}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Rotation:[0f,0f],Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
execute if entity @s[tag=UnselBlockPlace,scores={BlockRotation=2}] if entity @e[tag=UnselBlockPlace3,nbt={HandItems:[{tag:{BlockVarDirectional:1}},{}]}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Rotation:[0f,0f],Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
execute if entity @s[tag=!UnselBlockPlace,scores={BlockRotation=3},nbt={SelectedItem:{tag:{BlockVarDirectional:1}}}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Rotation:[90f,0f],Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
execute if entity @s[tag=UnselBlockPlace,scores={BlockRotation=3}] if entity @e[tag=UnselBlockPlace3,nbt={HandItems:[{tag:{BlockVarDirectional:1}},{}]}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Rotation:[90f,0f],Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
execute if entity @s[tag=!UnselBlockPlace,scores={BlockRotation=4},nbt={SelectedItem:{tag:{BlockVarDirectional:1}}}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Rotation:[180f,0f],Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
execute if entity @s[tag=UnselBlockPlace,scores={BlockRotation=4}] if entity @e[tag=UnselBlockPlace3,nbt={HandItems:[{tag:{BlockVarDirectional:1}},{}]}] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Rotation:[180f,0f],Tags:["CustomBlock"],ShowArms:1b,HandItems:[{id:"minecraft:player_head",Count:1b},{}],NoGravity:1b,Marker:1b,Invisible:1b}
#------------STAND INTO BLOCK--------------#
execute if entity @s[tag=!UnselBlockPlace] align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=CustomBlock,type=minecraft:armor_stand,limit=1,sort=nearest] HandItems[0].tag set from entity @s SelectedItem.tag
execute if entity @s[tag=UnselBlockPlace] align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=CustomBlock,type=minecraft:armor_stand,limit=1,sort=nearest] HandItems[0].tag set from entity @e[tag=UnselBlockPlace3,limit=1] HandItems[0].tag
execute align xyz positioned ~0.5 ~ ~0.5 run data modify entity @e[tag=CustomBlock,type=minecraft:armor_stand,limit=1,sort=nearest] HandItems[0].tag.CustomModelData set value 2
#--------------SETTING BLOCK---------------#
setblock ~ ~ ~ command_block
execute if entity @s[tag=!UnselBlockPlace] run data modify block ~ ~ ~ Command set from entity @s SelectedItem.tag.RealBlock
execute if entity @s[tag=UnselBlockPlace] run data modify block ~ ~ ~ Command set from entity @e[tag=UnselBlockPlace3,limit=1] HandItems[0].tag.RealBlock
data merge block ~ ~ ~ {auto:1b}
#----------------RESETTING-----------------#
tag @s remove UnselBlockPlace
execute at @s if entity @s[tag=UnselBlockPlace] as @e[tag=PlayerItem] if score @s BlockPlayerID = @e[distance=0,limit=1] BlockPlayerID run tag @s remove UnselBlockPlace3
scoreboard players set @s PlaceBlock 0
#------------------------------------------#