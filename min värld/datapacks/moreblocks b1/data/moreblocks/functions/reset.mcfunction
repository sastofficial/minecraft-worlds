#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Custom Blocks API> ","color":"blue","bold":false},{"text":"Data Pack loaded!","color":"none","bold":false}]
tellraw @a ["",{"text":"Custom Blocks API> ","color":"blue","bold":false},{"text":"Here are some important notes:\n1. Make sure you have the resource pack active\n2. To get the block book back if lost do: /trigger blockbook\n3. Have 0,0 forceloaded (You will get a message if it isn't)\n4. Be careful placing LOTS of custom blocks near eachother (Bad PC's like mine may experience block lag).","color":"none","bold":false}]
tellraw @a ["",{"text":"Custom Blocks API> ","color":"blue","bold":false},{"text":"Created by BlueCommander!","color":"none","bold":false}]
#---------------OBJECTIVES-----------------#
scoreboard objectives add BlockVersion dummy
scoreboard objectives add PlaceBlock minecraft.used:minecraft.player_head
scoreboard objectives add BlockRotation dummy
scoreboard objectives add BlockSaveGet dummy
scoreboard objectives add BlockSaveID dummy
scoreboard objectives add BlockPlayerID dummy
scoreboard objectives add CommandFeedback dummy
scoreboard objectives add Loaded dummy
scoreboard objectives add IDUpdated dummy
scoreboard objectives add BlockIDTranf dummy
scoreboard objectives add DoIDTranf dummy
scoreboard objectives add IDTranfPos dummy
scoreboard objectives add OpenBook minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add blockbook trigger
scoreboard objectives add CurrentPage dummy
scoreboard objectives add HeadSlot dummy
scoreboard objectives add ValidCollect dummy
scoreboard objectives add LastTickLoaded dummy
scoreboard objectives add LastTickDur dummy
scoreboard objectives add LastTickSlot dummy
scoreboard objectives add ThisTickDur dummy
scoreboard objectives add ThisTickSlot dummy
scoreboard objectives add RemoveBlockWait dummy
scoreboard objectives add FallingPosition dummy
scoreboard objectives add MatchedHead dummy
#scoreboard objectives add PistonMixedRow dummy
#scoreboard objectives add PistonSpace1 dummy
#scoreboard objectives add PistonSpace2 dummy
#scoreboard objectives add PistonSpace3 dummy
#scoreboard objectives add PistonSpace4 dummy
#scoreboard objectives add PistonSpace5 dummy
#scoreboard objectives add PistonSpace6 dummy
scoreboard objectives add StickyPos1 dummy
scoreboard objectives add StickyPos2 dummy
scoreboard objectives add StickyPos3 dummy
scoreboard objectives add StickyPos4 dummy
scoreboard objectives add StickyPos5 dummy
scoreboard objectives add StickyPos6 dummy
scoreboard objectives add InstantSlime minecraft.mined:minecraft.slime_block
scoreboard objectives add InstantInfest minecraft.mined:minecraft.infested_stone
scoreboard objectives add InstantTNT minecraft.mined:minecraft.tnt
#--------------FIRST TIMERS----------------#
scoreboard players set Global BlockVersion 1
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:99,display:{Name:"{\"text\":\"Block Book\",\"color\":\"white\",\"italic\":\"false\"}"}}}]}] run give @s minecraft:carrot_on_a_stick{CustomModelData:99,display:{Name:"{\"text\":\"Block Book\",\"color\":\"white\",\"italic\":\"false\"}"}}
execute unless score Global BlockSaveID matches 0.. run scoreboard players set Global BlockSaveID 0
execute unless score Global BlockPlayerID matches 0.. run scoreboard players set Global BlockPlayerID 0
#------------------------------------------#