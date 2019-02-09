#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MISC COMMANDS---------------#
gamerule commandBlockOutput false
execute as @e[type=armor_stand,tag=CustomBlock] run data merge entity @s {Fire:100,Marker:1b}
#----------DURABILITY TICK CHECK-----------#
execute as @a store result score @s ThisTickDur run data get entity @s SelectedItem.tag.Damage
execute as @a store result score @s ThisTickSlot run data get entity @s SelectedItemSlot
execute as @a unless score @s LastTickDur = @s ThisTickDur if score @s LastTickSlot = @s ThisTickSlot run tag @s add UsedTool
tag @a[scores={InstantSlime=1..}] add UsedTool
tag @a[scores={InstantInfest=1..}] add UsedTool
tag @a[scores={InstantTNT=1..}] add UsedTool
#------------BLOCK BOOK USING--------------#
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:99}}},scores={OpenBook=1..}] run function moreblocks:print/page1
scoreboard players set @a OpenBook 0
scoreboard players enable @a blockbook
execute as @a[scores={blockbook=1..}] run give @s minecraft:carrot_on_a_stick{CustomModelData:99,display:{Name:"{\"text\":\"Block Book\",\"color\":\"white\",\"italic\":\"false\"}"}}
scoreboard players set @a blockbook 0
#------------FORCELOADING 0,0--------------#
function moreblocks:check_loaded
execute unless score Global Loaded matches 1.. unless score Global LastTickLoaded matches 0 run tellraw @a ["",{"text":"Custom Blocks API> ","color":"blue"},{"text":"You MUST force load the chunk 0,0! Click ","color":"none"},{"text":"here","color":"green","clickEvent":{"action":"suggest_command","value":"/forceload add 0 0 0 0"}},{"text":" for the command you need to run.","color":"none"}]
execute unless score Global Loaded matches 0 unless score Global LastTickLoaded matches 1.. run tellraw @a ["",{"text":"Custom Blocks API> ","color":"blue"},{"text":"0,0 is forceloaded!","color":"none"}]
scoreboard players operation Global LastTickLoaded = Global Loaded
#-------------PLACING BLOCKS---------------#
execute unless entity @e[name="StringMatcher",type=armor_stand] run summon minecraft:armor_stand 0 1 0 {CustomName:"{\"text\":\"StringMatcher\"}",Tags:["Temp1","Temp2"],NoGravity:1b,ShowArms:1b}
execute as @a[scores={PlaceBlock=1..},nbt={SelectedItem:{id:"minecraft:player_head",tag:{CustomModelData:1}}}] at @s positioned ~ ~1.5 ~ run function moreblocks:block_find
execute as @e[tag=PlayerItem] at @a[scores={PlaceBlock=1..}] if score @s BlockPlayerID = @e[distance=0,limit=1] BlockPlayerID as @e[distance=0,limit=1] run tag @s add UnselBlockPlace
execute as @e[tag=PlayerItem] at @a[scores={PlaceBlock=1..}] if score @s BlockPlayerID = @e[distance=0,limit=1] BlockPlayerID as @e[distance=0,limit=1] at @s positioned ~ ~1.5 ~ run function moreblocks:block_find
scoreboard players set @a PlaceBlock 0
#-------------PISTON MOVING----------------#
function moreblocks:pistons/main
#----------TNT REAL BLOCK FIX--------------#
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed as @e[type=tnt,distance=..1] run data merge entity @s {Fuse:0}
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed at @e[type=tnt,distance=..1] run kill @s
#----------FALLING BLOCKS FIX--------------#
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed at @e[type=falling_block,distance=..0.1] if entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:white_concrete_powder"}},{}]}] run scoreboard players set @s FallingPosition 1
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed at @e[type=falling_block,distance=..0.1] if entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:sand"}},{}]}] run scoreboard players set @s FallingPosition 1
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed at @e[type=falling_block,distance=..0.1] if entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:red_sand"}},{}]}] run scoreboard players set @s FallingPosition 1
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed at @e[type=falling_block,distance=..0.1] if entity @s[nbt={HandItems:[{tag:{RealBlockRaw:"minecraft:gravel"}},{}]}] run scoreboard players set @s FallingPosition 1
execute as @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=1..}] at @s if block ~ ~-1 ~ #moreblocks:nonfullblocks run kill @e[type=falling_block,distance=..1]
execute as @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=1..}] at @s if block ~ ~-1 ~ #moreblocks:nonfullblocks run data merge entity @s {NoGravity:0b}
execute as @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=1..}] at @s if block ~ ~-1 ~ #moreblocks:nonfullblocks run scoreboard players set @s RemoveBlockWait 3
execute as @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=1..}] at @s unless block ~ ~-1 ~ #moreblocks:nonfullblocks positioned ~ ~-1 ~ run kill @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=0..},distance=..0.2]
execute as @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=1..}] at @s unless block ~ ~-1 ~ #moreblocks:nonfullblocks run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=1..}] at @s unless block ~ ~-1 ~ #moreblocks:nonfullblocks run setblock ~ ~ ~ command_block destroy
execute as @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=1..}] at @s unless block ~ ~-1 ~ #moreblocks:nonfullblocks run data modify block ~ ~ ~ Command set from entity @s HandItems[0].tag.RealBlock
execute as @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=1..}] at @s unless block ~ ~-1 ~ #moreblocks:nonfullblocks run data merge block ~ ~ ~ {auto:1b}
execute as @e[type=armor_stand,tag=CustomBlock,scores={FallingPosition=1..}] at @s unless block ~ ~-1 ~ #moreblocks:nonfullblocks align xyz run tp @s ~0.5 ~ ~0.5
execute as @e[type=armor_stand,tag=CustomBlock] at @s unless block ~ ~ ~ #moreblocks:allowed run scoreboard players set @s FallingPosition 0
#------------REMOVING BLOCKS---------------#
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed unless entity @s[nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:blast_furnace"}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:barrel"}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:hopper"}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:dispenser"}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:dropper"}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:furnace"}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:jukebox"}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:smoker"}},{}]}] positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.4] run kill @s
execute as @e[type=armor_stand,tag=CustomBlock,nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:blast_furnace"}},{}]}] at @s if block ~ ~ ~ #moreblocks:allowed positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.4,nbt={Item:{id:"minecraft:blast_furnace",Count:1b}},limit=1] run kill @s
execute as @e[type=armor_stand,tag=CustomBlock,nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:barrel"}},{}]}] at @s if block ~ ~ ~ #moreblocks:allowed positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.4,nbt={Item:{id:"minecraft:barrel",Count:1b}},limit=1] run kill @s
execute as @e[type=armor_stand,tag=CustomBlock,nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:hopper"}},{}]}] at @s if block ~ ~ ~ #moreblocks:allowed positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.4,nbt={Item:{id:"minecraft:hopper",Count:1b}},limit=1] run kill @s
execute as @e[type=armor_stand,tag=CustomBlock,nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:dispenser"}},{}]}] at @s if block ~ ~ ~ #moreblocks:allowed positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.4,nbt={Item:{id:"minecraft:dispenser",Count:1b}},limit=1] run kill @s
execute as @e[type=armor_stand,tag=CustomBlock,nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:dropper"}},{}]}] at @s if block ~ ~ ~ #moreblocks:allowed positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.4,nbt={Item:{id:"minecraft:dropper",Count:1b}},limit=1] run kill @s
execute as @e[type=armor_stand,tag=CustomBlock,nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:furnace"}},{}]}] at @s if block ~ ~ ~ #moreblocks:allowed positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.4,nbt={Item:{id:"minecraft:furnace",Count:1b}},limit=1] run kill @s
execute as @e[type=armor_stand,tag=CustomBlock,nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:jukebox"}},{}]}] at @s if block ~ ~ ~ #moreblocks:allowed positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.4,nbt={Item:{id:"minecraft:jukebox",Count:1b}},limit=1] run kill @s
execute as @e[type=armor_stand,tag=CustomBlock,nbt={HandItems:[{id:"minecraft:player_head",tag:{RealBlockRaw:"minecraft:smoker"}},{}]}] at @s if block ~ ~ ~ #moreblocks:allowed positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.4,nbt={Item:{id:"minecraft:smoker",Count:1b}},limit=1] run kill @s
execute as @e[type=armor_stand,tag=CustomBlock] at @s if block ~ ~ ~ #moreblocks:allowed unless entity @s[scores={ValidCollect=0..}] run function moreblocks:update_toolscores
execute as @e[type=armor_stand,tag=CustomBlock,scores={ValidCollect=1..,RemoveBlockWait=0}] at @s if block ~ ~ ~ #moreblocks:allowed if entity @p[gamemode=!creative] run summon item ~ ~ ~ {Tags:["BlockDropItem"],Item:{id:"minecraft:wheat_seeds",Count:1b},Motion:[0.0d,0.2d,0.0d]}
execute as @e[type=armor_stand,tag=CustomBlock,nbt={HandItems:[{id:"minecraft:player_head",tag:{BlockDrop:{id:"NULL",Count:1b}}},{}]},scores={ValidCollect=1..,RemoveBlockWait=0}] at @s if block ~ ~ ~ #moreblocks:allowed if entity @p[gamemode=!creative] at @e[type=item,sort=nearest,limit=1,distance=..1,tag=BlockDropItem] run function moreblocks:update_item
execute as @e[type=armor_stand,tag=CustomBlock,nbt=!{HandItems:[{id:"minecraft:player_head",tag:{BlockDrop:{id:"NULL",Count:1b}}},{}]},scores={ValidCollect=1..,RemoveBlockWait=0}] at @s if entity @p[gamemode=!creative] if block ~ ~ ~ #moreblocks:allowed at @e[type=item,sort=nearest,limit=1,distance=..1,tag=BlockDropItem] run data modify entity @e[distance=0,limit=1] Item set from entity @s HandItems[0].tag.BlockDrop
execute as @e[type=armor_stand,tag=CustomBlock,scores={ValidCollect=1..,RemoveBlockWait=0}] at @s if block ~ ~ ~ #moreblocks:allowed run kill @e[type=minecraft:experience_orb,distance=..0.5]
execute as @e[type=armor_stand,tag=CustomBlock,scores={ValidCollect=1..,RemoveBlockWait=0}] at @s if block ~ ~ ~ #moreblocks:allowed if entity @p[gamemode=!creative] run summon experience_orb ~ ~0.5 ~ {Tags:["TempValueOrb"],Value:0}
execute as @e[type=armor_stand,tag=CustomBlock,scores={ValidCollect=1..,RemoveBlockWait=0}] at @s if block ~ ~ ~ #moreblocks:allowed at @e[tag=TempValueOrb,distance=..5] if entity @p[gamemode=!creative] store result entity @e[distance=0,limit=1] Value double 1 run data get entity @s HandItems[0].tag.BlockVarXpAmount
kill @e[tag=TempValueOrb,nbt={Value:0s}]
tag @e[tag=TempValueOrb] remove TempValueOrb
execute as @e[type=armor_stand,tag=CustomBlock,scores={RemoveBlockWait=0}] at @s if block ~ ~ ~ #moreblocks:allowed run kill @s
#-------------BLOCK SAVE INIT--------------#
execute if entity @e[tag=BlockSave,scores={BlockSaveID=100..}] as @e[tag=BlockSaveInit] run tellraw @a ["",{"text":"Custom Blocks API> ","color":"blue"},{"text":" Unfortunately, you have reached the block limit of 100 blocks. The block limit may be increased in the future.","color":"white"}]
execute if entity @e[tag=BlockSave,scores={BlockSaveID=100..}] as @e[tag=BlockSaveInit] run kill @s
execute unless entity @e[tag=BlockSave,scores={BlockSaveID=100..}] run tag @e[tag=BlockSaveInit,limit=1] add CurrentBlockSave
execute as @e[tag=CurrentBlockSave] store result score @s BlockVersion run data get entity @s HandItems[0].tag.Version
execute as @e[tag=CurrentBlockSave] if score @s BlockVersion > Global BlockVersion run tellraw @a ["",{"text":"Custom Blocks API> ","color":"blue"},{"text":"Fail to initialised block ","color":"white"},{"selector":"@s","color":"green"},{"text":"\nReason: ","color":"red"},{"text":"There is a new version of the data pack avaliable.\nDownload it from the generator page to use the generator!","color":"white"}]
execute as @e[tag=CurrentBlockSave] if score @s BlockVersion > Global BlockVersion run kill @s
execute as @e[tag=CurrentBlockSave] at @s run tp @s 0 0 0
execute as @e[tag=CurrentBlockSave] run tellraw @a ["",{"text":"Custom Blocks API> ","color":"blue"},{"text":"Successfully initialised block ","color":"white"},{"selector":"@s","color":"green"}]
execute as @e[tag=CurrentBlockSave] run scoreboard players set @s BlockSaveGet 1
execute as @e[tag=CurrentBlockSave] run tag @s remove BlockSaveInit
#-------------BLOCK SAVE IDS---------------#
execute as @e[tag=CurrentBlockSave] unless score @s BlockSaveID matches 0.. run scoreboard players add Global BlockSaveID 1
execute as @e[tag=CurrentBlockSave] unless score @s BlockSaveID matches 0.. run scoreboard players operation @s BlockSaveID = Global BlockSaveID
execute as @e[tag=CurrentBlockSave] run tag @s remove CurrentBlockSave

execute if score Global BlockSaveID <= Global IDTranfPos run scoreboard players set Global IDTranfPos 0
scoreboard players add Global IDTranfPos 1
execute as @e[tag=BlockSave] if score Global IDTranfPos = @s BlockSaveID run tag @s add IDTranfSel
execute as @e[tag=IDTranfSel] store result score Global BlockIDTranf run scoreboard players get @s BlockSaveID
scoreboard players remove Global BlockIDTranf 1
execute unless entity @e[tag=IDTranfSel,scores={BlockSaveID=1}] run scoreboard players set Global DoIDTranf 1
execute if score Global BlockSaveID matches 0 run scoreboard players set Global DoIDTranf 0
execute as @e[tag=BlockSave] if score Global BlockIDTranf = @s BlockSaveID run scoreboard players set Global DoIDTranf 0
execute if score Global DoIDTranf matches 1.. as @e[tag=IDTranfSel,scores={BlockSaveID=2..}] run scoreboard players remove @s BlockSaveID 1
tag @e[tag=IDTranfSel] remove IDTranfSel

execute unless score Global Loaded matches 0 run scoreboard players set Global IDUpdated 0
execute unless score Global Loaded matches 0 as @e[scores={BlockSaveID=1..},type=armor_stand] if score Global BlockSaveID = @s BlockSaveID run scoreboard players set Global IDUpdated 1
execute unless score Global Loaded matches 0 if score Global IDUpdated matches 0 if score Global BlockSaveID matches 1.. as @a run function moreblocks:print/page1
execute unless score Global Loaded matches 0 if score Global IDUpdated matches 0 if score Global BlockSaveID matches 1.. as @a run tellraw @s ["",{"text":"A block was removed so all ID's have been rearranged.\n#---------------------------------------#","color":"white"}]
execute unless score Global Loaded matches 0 if score Global IDUpdated matches 0 if score Global BlockSaveID matches 1.. run scoreboard players remove Global BlockSaveID 1
#---------------PLAYER IDS-----------------#
execute as @a unless score @s BlockPlayerID matches 0.. run scoreboard players add Global BlockPlayerID 1
execute as @a unless score @s BlockPlayerID matches 0.. run scoreboard players operation @s BlockPlayerID = Global BlockPlayerID
#----------CURRENT ITEM STORAGE------------#
execute as @e[tag=PlayerItem] at @a[nbt=!{SelectedItem:{id:"minecraft:player_head",Count:1b,tag:{CustomModelData:1}}}] if score @s BlockPlayerID = @e[distance=0,limit=1] BlockPlayerID run kill @s
tag @a remove NoStandNeeded
execute as @e[tag=PlayerItem] at @a[nbt={SelectedItem:{id:"minecraft:player_head",Count:1b,tag:{CustomModelData:1}}}] if score @s BlockPlayerID = @e[distance=0,limit=1] BlockPlayerID run tag @e[distance=0,limit=1] add NoStandNeeded 
execute as @a[tag=!NoStandNeeded,nbt={SelectedItem:{id:"minecraft:player_head",Count:1b,tag:{CustomModelData:1}}}] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"PlayerItem\"}",NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["PlayerItem"]}
execute as @a[nbt={SelectedItem:{id:"minecraft:player_head",Count:1b,tag:{CustomModelData:1}}}] at @s run scoreboard players operation @e[tag=PlayerItem,distance=..0.0001,limit=1] BlockPlayerID = @s BlockPlayerID
execute as @e[tag=PlayerItem,scores={BlockPlayerID=1..}] at @s run tp @s 0 1 0
execute as @e[tag=PlayerItem,scores={BlockPlayerID=1..}] at @a if score @s BlockPlayerID = @e[distance=0,limit=1] BlockPlayerID run data modify entity @s HandItems[0] set from entity @e[distance=0,limit=1] SelectedItem
#-------------BLOCK SAVE GET---------------#
execute as @e[tag=BlockSave,scores={BlockSaveGet=1..}] at @a run summon item ~ ~1.5 ~ {Tags:["BlockSaveGetItem"],Item:{id:"minecraft:wheat_seeds",Count:1b}}
execute as @e[tag=BlockSave,scores={BlockSaveGet=1..}] at @e[type=item,tag=BlockSaveGetItem,nbt={Item:{id:"minecraft:wheat_seeds",Count:1b}}] run function moreblocks:update_item
execute as @e[tag=BlockSave,scores={BlockSaveGet=1..}] at @e[type=item,tag=BlockSaveGetItem] store result entity @e[distance=0,limit=1] Item.Count int 1 run scoreboard players get @s BlockSaveGet
tag @e remove BlockSaveGetItem
scoreboard players reset @e[scores={BlockSaveGet=1..}] BlockSaveGet
#------------PLAYER HEAD FIXES-------------#
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{CustomModelData:1}}]}] at @s run summon item ~ ~1.5 ~ {Tags:["TransformItem"],Item:{id:"minecraft:player_head",Count:1b}}
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{CustomModelData:1}}]}] at @s at @e[distance=..5,type=item,tag=TransformItem,nbt={Item:{id:"minecraft:player_head",Count:1b}}] run function moreblocks:update_itemplayer

execute as @e[type=minecraft:armor_stand,nbt={ArmorItems:[{id:"minecraft:player_head",tag:{CustomModelData:1}}]}] at @s run summon item ~ ~1.5 ~ {Tags:["TransformItem"],Item:{id:"minecraft:player_head",Count:1b}}
execute as @e[type=minecraft:armor_stand,nbt={ArmorItems:[{id:"minecraft:player_head",tag:{CustomModelData:1}}]}] at @s at @e[distance=..5,type=item,tag=TransformItem,nbt={Item:{id:"minecraft:player_head",Count:1b}}] run data modify entity @e[distance=0,limit=1] Item set from entity @s ArmorItems[3]
execute as @e[type=minecraft:armor_stand,nbt={ArmorItems:[{id:"minecraft:player_head",tag:{CustomModelData:1}}]}] run data modify entity @s ArmorItems[3] set value ""

execute as @e[type=minecraft:armor_stand,tag=CustomBlock,nbt=!{HandItems:[{tag:{}},{}]}] run kill @s
#-----------PREPARING NEXT TICK------------#
tag @a remove UsedTool
scoreboard players set @a InstantSlime 0
scoreboard players set @a InstantInfest 0
scoreboard players set @a InstantTNT 0
execute as @a run scoreboard players operation @s LastTickDur = @s ThisTickDur
execute as @a run scoreboard players operation @s LastTickSlot = @s ThisTickSlot
#------------------------------------------#