################################################################################################
#
# Traps
#
################################################################################################



scoreboard objectives add spike dummy
scoreboard objectives add blood_timer dummy
scoreboard objectives add tntcount dummy
scoreboard objectives add bear dummy
scoreboard objectives add bear_cd dummy
scoreboard objectives add decoy_timer dummy
scoreboard objectives add up_timer dummy
scoreboard objectives add maze_progress dummy
scoreboard objectives add scare_timer dummy
scoreboard objectives add chest_open minecraft.custom:minecraft.open_chest
scoreboard objectives add scare_rot dummy
scoreboard objectives add ET dummy




gamerule logAdminCommands false
gamerule sendCommandFeedback false
gamerule commandBlockOutput false


scoreboard players set @e ET 1
scoreboard players set @e[type=item] ET 0
scoreboard players set @e[type=armor_stand] ET 0
scoreboard players set @e[type=fishing_bobber] ET 0
scoreboard players set @e[type=end_crystal] ET 0
scoreboard players set @e[type=area_effect_cloud] ET 0
scoreboard players set @e[type=boat] ET 0
scoreboard players set @e[type=arrow] ET 0
scoreboard players set @e[type=painting] ET 0
scoreboard players set @e[type=player] ET 0
scoreboard players set @e[type=arrow] ET 0
scoreboard players set @e[type=minecart] ET 0
scoreboard players set @e[type=experience_orb] ET 0
scoreboard players set @e[type=zombie] ET 2
scoreboard players set @e[type=zombie_villager] ET 2
scoreboard players set @e[type=zombie_horse] ET 2
scoreboard players set @e[type=zombie_pigman] ET 2
scoreboard players set @e[type=wither_skeleton] ET 2
scoreboard players set @e[type=husk] ET 2
scoreboard players set @e[type=skeleton] ET 2
scoreboard players set @e[type=stray] ET 2



################################################## Spike Trap #################################################################


give @a[tag=give] minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"§6§lSpike Trap\"}"},EntityTag:{id:"minecraft:endermite",Tags:["sp1","sp"]},HideFlags:63}

execute at @e[tag=sp1] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1,Tags:["spike_trap","spike_trap_as"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute at @e[tag=sp1] align xyz run summon armor_stand ~0.5 ~ ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:0},Count:1}],Invisible:1,Tags:["spike_trap","spike"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=sp1] run data merge entity @s {DeathTime:19,Health:0}

scoreboard players add @e[tag=spike_trap_as] spike 0
scoreboard players add @e[tag=spike_trap_as,scores={spike=1..}] spike 1
scoreboard players set @e[tag=spike_trap_as,scores={spike=60..}] spike 0
execute as @a at @s run scoreboard players set @e[tag=spike_trap_as,scores={spike=0},distance=..0.5] spike 1
execute as @e[tag=spike_trap_as,scores={spike=2..40}] at @s run scoreboard players set @a[scores={blood_timer=0},distance=..0.5] blood_timer 100
execute as @e[tag=spike_trap_as,scores={spike=1..4}] at @s run execute as @e[tag=spike,limit=1,sort=nearest] at @s run tp @s ~ ~0.19 ~ 
execute as @e[tag=spike_trap_as,scores={spike=31..46}] at @s run execute as @e[tag=spike,limit=1,sort=nearest] at @s run tp @s ~ ~-0.0475 ~ 


scoreboard players add @a blood_timer 0
scoreboard players remove @a[scores={blood_timer=1..}] blood_timer 1
effect give @a[scores={blood_timer=99}] instant_damage 1 0 true
effect give @a[scores={blood_timer=99}] wither 5 1 true
effect give @a[scores={blood_timer=99}] nausea 7 1 true
effect give @a[scores={blood_timer=99}] slowness 5 1 true
execute as @a[scores={blood_timer=99}] at @s run particle item rose_red ~ ~0.3 ~ 0.2 0.2 0.2 0.1 20 force
execute as @a[scores={blood_timer=1..}] at @s run particle item rose_red ~ ~0.5 ~ 0.2 0.8 0.2 0.1 1 force

execute as @e[tag=spike_trap_as] at @s if block ~ ~-1 ~ air run kill @e[tag=spike,limit=1,sort=nearest]
execute as @e[tag=spike_trap_as] at @s if block ~ ~-1 ~ air run particle large_smoke ~ ~0.4 ~ 0.2 0.2 0.2 0.05 8 force
execute as @e[tag=spike_trap_as] at @s if block ~ ~-1 ~ air run kill @s


#################################################### Hidden Tnt Trap ########################################################

give @a[tag=give] minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"§4§lTnt Trap\"}"},EntityTag:{id:"minecraft:endermite",Tags:["sp2","sp"]},HideFlags:63}

execute at @e[tag=sp2] align xyz run summon armor_stand ~0.5 ~-1 ~0.5 {Invisible:1,Tags:["tnt_trap"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=sp2] run data merge entity @s {DeathTime:19,Health:0}

scoreboard players set @e[tag=tnt_trap] tntcount 0
execute as @e[tag=tnt_trap] at @s run scoreboard players add @e[tag=tnt_trap,distance=..0.2] tntcount 1
execute as @e[tag=tnt_trap] at @s if block ~ ~ ~ air run summon tnt ~ ~ ~ {Fuse:0}
execute as @e[tag=tnt_trap] at @s if block ~ ~ ~ air run kill @s

execute at @e[scores={tntcount=2..},tag=tnt_trap] run particle large_smoke ~ ~0.9 ~ 0.2 0.2 0.2 0.05 4 force
kill @e[scores={tntcount=2..},tag=tnt_trap]


#################################################### Bear Trap ########################################################

give @a[tag=give] minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"§8§lBear Trap\"}"},EntityTag:{id:"minecraft:endermite",Tags:["sp3","sp"]},HideFlags:63}

execute at @e[tag=sp3] align xyz run summon armor_stand ~0.5 ~ ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:1},Count:1}],Invisible:1,Tags:["bear_trap"],Marker:1,DisabledSlots:4144959,NoGravity:1}

execute as @e[tag=sp3] run data merge entity @s {DeathTime:19,Health:0}

scoreboard players add @e[tag=bear_trap] bear 0
scoreboard players add @e[tag=bear_trap] bear_cd 0
execute as @e[tag=bear_trap,scores={bear=0,bear_cd=0}] at @s run tag @e[scores={ET=1..2},distance=..0.7] add beared
execute as @e[tag=bear_trap,scores={bear=0,bear_cd=0}] at @s run execute at @e[scores={ET=1..2},distance=..0.7] run scoreboard players set @s bear 1

execute as @e[tag=bear_trap,scores={bear=0}] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:1},Count:1}]}
execute as @e[tag=bear_trap,scores={bear=1}] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:2},Count:1}]}
execute as @e[tag=bear_trap,scores={bear=1}] at @s run tp @e[tag=beared,limit=1,sort=nearest] ~ ~ ~ 

execute as @e[type=item,nbt={Item:{id:"minecraft:flint"},OnGround:1b}] at @s run scoreboard players set @e[tag=bear_trap,scores={bear=1},distance=..1] bear_cd 60

scoreboard players remove @e[scores={bear_cd=1..}] bear_cd 1
scoreboard players set @e[scores={bear_cd=59}] bear 0
execute at @e[scores={bear_cd=59}] run tag @e[tag=beared,limit=1,sort=nearest] remove beared



execute as @e[tag=bear_trap,scores={bear=1}] at @s if block ~ ~-1 ~ air run tag @e[tag=beared,limit=1,sort=nearest] remove beared
execute as @e[tag=bear_trap] at @s if block ~ ~-1 ~ air run particle large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.05 8 force
execute as @e[tag=bear_trap] at @s if block ~ ~-1 ~ air run kill @s



#################################################### Sky Trap ########################################################

give @a[tag=give] minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"§1§lSky Trap\"}"},EntityTag:{id:"minecraft:endermite",Tags:["sp5","sp"]},HideFlags:63}

execute at @e[tag=sp5] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1,Tags:["sky_trap"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=sp5] run data merge entity @s {DeathTime:19,Health:0}

execute as @e[tag=sky_trap] at @s if block ~ ~-1 ~ air run particle large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.05 8 force
execute as @e[tag=sky_trap] at @s if block ~ ~-1 ~ air run kill @s

execute as @e[scores={ET=1..2}] at @s run tag @e[tag=sky_trap,distance=..0.5] add sky_trigger
execute as @e[scores={ET=1..2}] at @s run execute at @e[tag=sky_trap,distance=..0.5] run tag @s add tp_up

execute as @a at @s run tag @e[tag=sky_trap,distance=..0.5] add sky_trigger
execute as @a at @s run execute at @e[tag=sky_trap,distance=..0.5] run tag @s add tp_up

scoreboard players add @e[tag=tp_up] up_timer 1
scoreboard players add @e[tag=up_as] up_timer 1

execute as @e[tag=tp_up,scores={up_timer=1}] at @s align xyz run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.05 5 force
execute as @e[tag=tp_up,scores={up_timer=1}] at @s align xyz run summon armor_stand ~0.5 201 ~0.5 {Tags:[up_as],Invisible:1,Marker:1} 
execute as @e[tag=tp_up,scores={up_timer=1}] at @s run setblock ~ 200 ~ glass
execute as @e[tag=tp_up,scores={up_timer=1}] at @s align xyz run tp @s ~0.5 201 ~0.5 
kill @e[tag=sky_trigger]




tag @e[tag=tp_up,scores={up_timer=50}] remove tp_up
scoreboard players set @e[scores={up_timer=50..},tag=!up_as] up_timer 0
#kill @e[scores={up_timer=40},tag=up_as]
execute at @e[tag=up_as,scores={up_timer=1..20}] run tp @e[tag=tp_up,limit=1,sort=nearest,distance=..1] ~ ~ ~ 

execute as @e[tag=up_as] at @s if block ~ ~-1 ~ air run kill @s 
execute as @e[tag=up_as] at @s run fill ~1 ~1 ~1 ~-1 ~-3 ~-1 air replace water 







#################################################### Maze Trap ########################################################



give @a[tag=give] minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"§6§lMaze Trap\"}"},EntityTag:{id:"minecraft:endermite",Tags:["sp6","sp"]},HideFlags:63}

execute at @e[tag=sp6] align xyz run execute at @e[tag=maze_as] align xyz run tag @e[tag=sp6] add sp_block
execute at @e[tag=sp6] align xyz run kill @e[tag=maze_trap]
execute at @e[tag=sp6,tag=!sp_block] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1,Tags:["maze_trap"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=sp6] run data merge entity @s {DeathTime:19,Health:0}


execute as @e[tag=maze_trap] at @s run tag @a[distance=..0.5] add mazed
execute at @a[tag=mazed] run tag @e[tag=maze_trap,distance=..0.5] add start_maze


execute as @e[tag=start_maze] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["maze_as","maze_east","maze_closed","east_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=start_maze] at @s run summon armor_stand ~3 ~ ~1 {Invisible:1,Tags:["maze_as","maze_south","south_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=start_maze] at @s run summon armor_stand ~3 ~ ~-1 {Invisible:1,Tags:["maze_as","maze_north","north_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}

execute as @e[tag=start_maze] at @s run summon armor_stand ~4 ~ ~4 {Invisible:1,Tags:["maze_as","maze_east","east_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=start_maze] at @s run summon armor_stand ~4 ~ ~-4 {Invisible:1,Tags:["maze_as","maze_east","east_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=start_maze] at @s run summon armor_stand ~2 ~ ~4 {Invisible:1,Tags:["maze_as","maze_west","west_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=start_maze] at @s run summon armor_stand ~2 ~ ~-4 {Invisible:1,Tags:["maze_as","maze_west","west_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}

execute as @a[tag=mazed] at @s run execute at @e[tag=maze_south,tag=!maze_closed,distance=..0.5] run scoreboard players add @s maze_progress 1
execute as @a[tag=mazed] at @s run execute at @e[tag=maze_north,tag=!maze_closed,distance=..0.5] run scoreboard players add @s maze_progress 1
execute as @a[tag=mazed] at @s run execute at @e[tag=maze_west,tag=!maze_closed,distance=..0.5] run scoreboard players add @s maze_progress 1
execute as @a[tag=mazed] at @s run execute at @e[tag=maze_east,tag=!maze_closed,distance=..0.5] run scoreboard players add @s maze_progress 1

execute at @a[tag=mazed] run tag @e[tag=maze_south,tag=!maze_closed,distance=..0.5] add spawn_south
execute at @a[tag=mazed] run tag @e[tag=maze_north,tag=!maze_closed,distance=..0.5] add spawn_north
execute at @a[tag=mazed] run tag @e[tag=maze_west,tag=!maze_closed,distance=..0.5] add spawn_west
execute at @a[tag=mazed] run tag @e[tag=maze_east,tag=!maze_closed,distance=..0.5] add spawn_east


scoreboard players add @a[scores={maze_progress=50..}] maze_progress 1
tag @a[scores={maze_progress=55..}] add finish_maze
tag @a[scores={maze_progress=55..}] remove mazed
scoreboard players set @a[scores={maze_progress=55..}] maze_progress 0

execute as @e[tag=spawn_south] at @s positioned ~3 ~ ~-1 run tag @e[tag=maze_as,distance=..1] add kill_west
execute as @e[tag=spawn_south] at @s positioned ~-3 ~ ~-1 run tag @e[tag=maze_as,distance=..1] add kill_east
execute as @e[tag=spawn_south] at @s positioned ~ ~ ~-2 run tag @e[tag=maze_as,distance=..1] add kill_north
execute as @e[tag=spawn_south] at @s positioned ~-1 ~ ~-5 run tag @e[tag=maze_as,distance=..1] add kill_west
execute as @e[tag=spawn_south] at @s positioned ~1 ~ ~-5 run tag @e[tag=maze_as,distance=..1] add kill_east
execute as @e[tag=spawn_south] at @s run summon armor_stand ~4 ~ ~2 {Invisible:1,Tags:["maze_as","maze_north","north_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_south] at @s run summon armor_stand ~4 ~ ~4 {Invisible:1,Tags:["maze_as","maze_south","south_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_south] at @s run summon armor_stand ~-4 ~ ~2 {Invisible:1,Tags:["maze_as","maze_north","north_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_south] at @s run summon armor_stand ~-4 ~ ~4 {Invisible:1,Tags:["maze_as","maze_south","south_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}

execute as @e[tag=spawn_north] at @s positioned ~-3 ~ ~1 run tag @e[tag=maze_as,distance=..1] add kill_east
execute as @e[tag=spawn_north] at @s positioned ~3 ~ ~1 run tag @e[tag=maze_as,distance=..1] add kill_west
execute as @e[tag=spawn_north] at @s positioned ~ ~ ~2 run tag @e[tag=maze_as,distance=..1] add kill_south
execute as @e[tag=spawn_north] at @s positioned ~-1 ~ ~5 run tag @e[tag=maze_as,distance=..1] add kill_west
execute as @e[tag=spawn_north] at @s positioned ~1 ~ ~5 run tag @e[tag=maze_as,distance=..1] add kill_east
execute as @e[tag=spawn_north] at @s run summon armor_stand ~4 ~ ~-4 {Invisible:1,Tags:["maze_as","maze_north","north_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_north] at @s run summon armor_stand ~4 ~ ~-2 {Invisible:1,Tags:["maze_as","maze_south","south_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_north] at @s run summon armor_stand ~-4 ~ ~-4 {Invisible:1,Tags:["maze_as","maze_north","north_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_north] at @s run summon armor_stand ~-4 ~ ~-2 {Invisible:1,Tags:["maze_as","maze_south","south_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}

execute as @e[tag=spawn_east] at @s positioned ~-1 ~ ~3 run tag @e[tag=maze_as,distance=..1] add kill_north
execute as @e[tag=spawn_east] at @s positioned ~-1 ~ ~-3 run tag @e[tag=maze_as,distance=..1] add kill_south
execute as @e[tag=spawn_east] at @s positioned ~-2 ~ ~ run tag @e[tag=maze_as,distance=..1] add kill_west
execute as @e[tag=spawn_east] at @s positioned ~-5 ~ ~1 run tag @e[tag=maze_as,distance=..1] add kill_south
execute as @e[tag=spawn_east] at @s positioned ~-5 ~ ~-1 run tag @e[tag=maze_as,distance=..1] add kill_north
execute as @e[tag=spawn_east] at @s run summon armor_stand ~4 ~ ~-4 {Invisible:1,Tags:["maze_as","maze_east","east_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_east] at @s run summon armor_stand ~2 ~ ~-4 {Invisible:1,Tags:["maze_as","maze_west","west_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_east] at @s run summon armor_stand ~4 ~ ~4 {Invisible:1,Tags:["maze_as","maze_east","east_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_east] at @s run summon armor_stand ~2 ~ ~4 {Invisible:1,Tags:["maze_as","maze_west","west_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}

execute as @e[tag=spawn_west] at @s positioned ~1 ~ ~3 run tag @e[tag=maze_as,distance=..1] add kill_north
execute as @e[tag=spawn_west] at @s positioned ~1 ~ ~-3 run tag @e[tag=maze_as,distance=..1] add kill_south
execute as @e[tag=spawn_west] at @s positioned ~2 ~ ~ run tag @e[tag=maze_as,distance=..1] add kill_east
execute as @e[tag=spawn_west] at @s positioned ~5 ~ ~1 run tag @e[tag=maze_as,distance=..1] add kill_south
execute as @e[tag=spawn_west] at @s positioned ~5 ~ ~-1 run tag @e[tag=maze_as,distance=..1] add kill_north
execute as @e[tag=spawn_west] at @s run summon armor_stand ~-2 ~ ~-4 {Invisible:1,Tags:["maze_as","maze_east","east_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_west] at @s run summon armor_stand ~-4 ~ ~-4 {Invisible:1,Tags:["maze_as","maze_west","west_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_west] at @s run summon armor_stand ~-2 ~ ~4 {Invisible:1,Tags:["maze_as","maze_east","east_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=spawn_west] at @s run summon armor_stand ~-4 ~ ~4 {Invisible:1,Tags:["maze_as","maze_west","west_init"],Marker:1,DisabledSlots:4144959,NoGravity:1}


############# Block  Placement ###############
execute as @e[tag=west_init] at @s run clone ~-4 ~-1 ~ ~ ~-1 ~ ~-4 0 ~ 
execute as @e[tag=east_init] at @s run clone ~4 ~-1 ~ ~ ~-1 ~ ~ 0 ~ 
execute as @e[tag=south_init] at @s run clone ~ ~-1 ~4 ~ ~-1 ~ ~ 0 ~
execute as @e[tag=north_init] at @s run clone ~ ~-1 ~-4 ~ ~-1 ~ ~ 0 ~-4




execute as @e[tag=maze_east] at @s run fill ~ ~2 ~ ~3 ~2 ~ glass
execute as @e[tag=maze_east] at @s run fill ~ ~-1 ~ ~3 ~-1 ~ stone
execute as @e[tag=maze_east] at @s run fill ~ ~ ~-1 ~2 ~1 ~-1 stone
execute as @e[tag=maze_east] at @s run fill ~ ~ ~1 ~2 ~1 ~1 stone
execute as @e[tag=maze_east] at @s run fill ~4 ~ ~ ~4 ~1 ~ stone
execute as @e[tag=maze_east,tag=maze_closed] at @s run fill ~-1 ~ ~ ~-1 ~1 ~ stone

execute as @e[tag=maze_west] at @s run fill ~ ~2 ~ ~-3 ~2 ~ glass
execute as @e[tag=maze_west] at @s run fill ~ ~-1 ~ ~-3 ~-1 ~ stone
execute as @e[tag=maze_west] at @s run fill ~ ~ ~-1 ~-2 ~1 ~-1 stone
execute as @e[tag=maze_west] at @s run fill ~ ~ ~1 ~-2 ~1 ~1 stone
execute as @e[tag=maze_west] at @s run fill ~-4 ~ ~ ~-4 ~1 ~ stone
execute as @e[tag=maze_west,tag=maze_closed] at @s run fill ~1 ~ ~ ~1 ~1 ~ stone

execute as @e[tag=maze_south] at @s run fill ~ ~2 ~ ~ ~2 ~3 glass
execute as @e[tag=maze_south] at @s run fill ~ ~-1 ~ ~ ~-1 ~3 stone
execute as @e[tag=maze_south] at @s run fill ~-1 ~ ~ ~-1 ~1 ~2 stone
execute as @e[tag=maze_south] at @s run fill ~1 ~ ~ ~1 ~1 ~2 stone
execute as @e[tag=maze_south,tag=maze_closed] at @s run fill ~ ~ ~-1 ~ ~1 ~-1 stone
execute as @e[tag=maze_south] at @s run fill ~ ~ ~4 ~ ~1 ~4 stone

execute as @e[tag=maze_north] at @s run fill ~ ~2 ~ ~ ~2 ~-3 glass
execute as @e[tag=maze_north] at @s run fill ~ ~-1 ~ ~ ~-1 ~-3 stone
execute as @e[tag=maze_north] at @s run fill ~-1 ~ ~ ~-1 ~1 ~-2 stone
execute as @e[tag=maze_north] at @s run fill ~1 ~ ~ ~1 ~1 ~-2 stone
execute as @e[tag=maze_north,tag=maze_closed] at @s run fill ~ ~ ~1 ~ ~1 ~1 stone
execute as @e[tag=maze_north] at @s run fill ~ ~ ~-4 ~ ~1 ~-4 stone




########### Tags #############
tag @e[tag=spawn_south] add maze_closed
tag @e[tag=spawn_north] add maze_closed
tag @e[tag=spawn_west] add maze_closed
tag @e[tag=spawn_east] add maze_closed

tag @e[tag=spawn_south] remove spawn_south
tag @e[tag=spawn_north] remove spawn_north
tag @e[tag=spawn_west] remove spawn_west
tag @e[tag=spawn_east] remove spawn_east


execute at @e[tag=start_maze] run scoreboard players set @a maze_progress 0
kill @e[tag=start_maze]





############ Kill Segments ###################
execute as @a[tag=finish_maze] at @s run tag @e[tag=maze_south] add kill_south
execute as @a[tag=finish_maze] at @s run tag @e[tag=maze_north] add kill_north
execute as @a[tag=finish_maze] at @s run tag @e[tag=maze_west] add kill_west
execute as @a[tag=finish_maze] at @s run tag @e[tag=maze_east] add kill_east

execute as @e[tag=kill_east] at @s run fill ~ ~2 ~ ~3 ~2 ~ air
execute as @e[tag=kill_east] at @s run fill ~2 ~ ~ ~2 ~1 ~ air
execute as @e[tag=kill_east] at @s run clone ~4 0 ~ ~ 0 ~ ~ ~-1 ~ 
execute as @e[tag=kill_east] at @s run fill ~-1 ~ ~1 ~2 ~1 ~-1 air
execute as @e[tag=kill_east] at @s run fill ~4 ~ ~ ~4 ~1 ~ air

execute as @e[tag=kill_west] at @s run fill ~ ~2 ~ ~-3 ~2 ~ air
execute as @e[tag=kill_west] at @s run fill ~-2 ~ ~ ~-2 ~1 ~ air
execute as @e[tag=kill_west] at @s run clone ~-4 0 ~ ~ 0 ~ ~-4 ~-1 ~ 
execute as @e[tag=kill_west] at @s run fill ~1 ~ ~1 ~-2 ~1 ~-1 air
execute as @e[tag=kill_west] at @s run fill ~-4 ~ ~ ~-4 ~1 ~ air

execute as @e[tag=kill_north] at @s run fill ~ ~2 ~ ~ ~2 ~-3 air
execute as @e[tag=kill_north] at @s run fill ~ ~ ~-2 ~ ~1 ~-2 air
execute as @e[tag=kill_north] at @s run clone ~ 0 ~-4 ~ 0 ~ ~ ~-1 ~-4 
execute as @e[tag=kill_north] at @s run fill ~-1 ~ ~1 ~1 ~1 ~-2 air
execute as @e[tag=kill_north] at @s run fill ~ ~ ~-4 ~ ~1 ~-4 air

execute as @e[tag=kill_south] at @s run fill ~ ~2 ~ ~ ~2 ~3 air
execute as @e[tag=kill_south] at @s run fill ~ ~ ~2 ~ ~1 ~2 air
execute as @e[tag=kill_south] at @s run clone ~ 0 ~4 ~ 0 ~ ~ ~-1 ~ 
execute as @e[tag=kill_south] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~2 air
execute as @e[tag=kill_south] at @s run fill ~ ~ ~4 ~ ~1 ~4 air




execute as @e[tag=east_init] at @s run fill ~3 ~ ~ ~ ~1 ~ air
execute as @e[tag=east_init] at @s run setblock ~2 ~ ~ oak_door[half=lower,open=false,facing=west]
execute as @e[tag=east_init] at @s run setblock ~2 ~1 ~ oak_door[half=upper,open=false,facing=west]

execute as @e[tag=west_init] at @s run fill ~-3 ~ ~ ~ ~1 ~ air
execute as @e[tag=west_init] at @s run setblock ~-2 ~ ~ oak_door[half=lower,open=false,facing=east]
execute as @e[tag=west_init] at @s run setblock ~-2 ~1 ~ oak_door[half=upper,open=false,facing=east]

execute as @e[tag=south_init] at @s run fill ~ ~ ~3 ~ ~1 ~ air
execute as @e[tag=south_init] at @s run setblock ~ ~ ~2 oak_door[half=lower,open=false,facing=north]
execute as @e[tag=south_init] at @s run setblock ~ ~1 ~2 oak_door[half=upper,open=false,facing=north]

execute as @e[tag=north_init] at @s run fill ~ ~ ~-3 ~ ~1 ~ air
execute as @e[tag=north_init] at @s run setblock ~ ~ ~-2 oak_door[half=lower,open=false,facing=south]
execute as @e[tag=north_init] at @s run setblock ~ ~1 ~-2 oak_door[half=upper,open=false,facing=south]



tag @e[tag=east_init] remove east_init
tag @e[tag=north_init] remove north_init
tag @e[tag=west_init] remove west_init
tag @e[tag=south_init] remove south_init

kill @e[tag=kill_east]
kill @e[tag=kill_west]
kill @e[tag=kill_south]
kill @e[tag=kill_north]

tag @a[tag=finish_maze] remove finish_maze


#################################################### Jump Scare Trap ########################################################


give @a[tag=give] minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"§8§lJump Scare Chest\"}"},EntityTag:{id:"minecraft:endermite",Tags:["sp7","sp"]},HideFlags:63}

execute at @e[tag=sp7] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1,Tags:["jumpscare_trap"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute at @e[tag=sp7] align xyz run setblock ~ ~ ~ chest
execute as @e[tag=sp7] run data merge entity @s {DeathTime:19,Health:0}






execute as @a[scores={chest_open=1..}] at @s positioned ~ ~1 ~ run execute as @s positioned ^ ^ ^1 run scoreboard players set @e[tag=jumpscare_trap,distance=..1.0,scores={scare_timer=0}] scare_timer 1
execute as @a[scores={chest_open=1..}] at @s positioned ~ ~1 ~ run execute as @s positioned ^ ^ ^2 run scoreboard players set @e[tag=jumpscare_trap,distance=..1.0,scores={scare_timer=0}] scare_timer 1
execute as @a[scores={chest_open=1..}] at @s positioned ~ ~1 ~ run execute as @s positioned ^ ^ ^3 run scoreboard players set @e[tag=jumpscare_trap,distance=..1.0,scores={scare_timer=0}] scare_timer 1
execute as @a[scores={chest_open=1..}] at @s positioned ~ ~1 ~ run execute as @s positioned ^ ^ ^4 run scoreboard players set @e[tag=jumpscare_trap,distance=..1.0,scores={scare_timer=0}] scare_timer 1
execute as @a[scores={chest_open=1..}] at @s positioned ~ ~1 ~ run execute as @s positioned ^ ^ ^5 run scoreboard players set @e[tag=jumpscare_trap,distance=..1.0,scores={scare_timer=0}] scare_timer 1


scoreboard players add @e[tag=jumpscare_trap] scare_timer 0
scoreboard players add @e[tag=jumpscare_trap,scores={scare_timer=1..}] scare_timer 1
execute as @e[tag=jumpscare_trap,scores={scare_timer=2}] at @s run setblock ~ ~ ~ void_air
execute as @e[tag=jumpscare_trap,scores={scare_timer=3}] at @s run setblock ~ ~ ~ chest
execute as @e[tag=jumpscare_trap,scores={scare_timer=3}] at @s run data merge block ~ ~ ~ {Lock:"-"}
scoreboard players set @e[tag=jumpscare_trap,scores={scare_timer=30..}] scare_timer 0

execute as @e[tag=jumpscare_trap,scores={scare_timer=2}] at @s run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["scare_as"],Rotation:[180f] }

execute as @e[tag=jumpscare_trap,scores={scare_timer=25}] at @s run kill @e[tag=scare_as,limit=1,sort=nearest]

execute as @e[tag=jumpscare_trap,scores={scare_timer=2}] at @s run execute as @e[tag=scare_as,limit=1,sort=nearest] run execute store result score @s scare_rot run data get entity @p Rotation[0] 1
execute as @e[tag=jumpscare_trap,scores={scare_timer=3}] at @s run scoreboard players add @e[tag=scare_as,limit=1,sort=nearest] scare_rot 180
execute as @e[tag=jumpscare_trap,scores={scare_timer=3}] at @s run execute as @e[tag=scare_as,limit=1,sort=nearest] run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s scare_rot

execute as @e[tag=jumpscare_trap,scores={scare_timer=6}] at @s run execute as @e[tag=scare_as,limit=1,sort=nearest] run data merge entity @s {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:wither_skeleton_skull",Count:1b}]}
execute as @e[tag=jumpscare_trap,scores={scare_timer=6..7}] at @s run execute as @e[tag=scare_as,limit=1,sort=nearest] at @s run tp @s ~ ~0.5 ~ 
execute as @e[tag=jumpscare_trap,scores={scare_timer=3}] at @s run playsound minecraft:entity.enderman.scream master @a




scoreboard players set @a chest_open 0

execute as @e[tag=jumpscare_trap] at @s if block ~ ~ ~ air run particle large_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.05 8 force
execute as @e[tag=jumpscare_trap] at @s if block ~ ~ ~ air run kill @s 




#################################################### Decoy Chest Trap ########################################################

give @a[tag=give] minecraft:endermite_spawn_egg{display:{Name:"{\"text\":\"§8§lDecoy Chest Trap\"}"},EntityTag:{id:"minecraft:endermite",Tags:["sp4","sp"]},HideFlags:63}

execute at @e[tag=sp4] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1,Tags:["chest_trap"],Marker:1,DisabledSlots:4144959,NoGravity:1}
execute at @e[tag=sp4] align xyz run scoreboard players set @e[tag=chest_trap,limit=1,sort=nearest] decoy_timer -100
execute as @e[tag=sp4] run data merge entity @s {DeathTime:19,Health:0}

execute at @e[tag=chest_trap] align xyz run setblock ~ ~ ~ chest{Lock:"-"}
execute at @e[tag=chest_trap] align xyz run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 stone
execute at @e[tag=chest_trap] align xyz run fill ~-2 ~3 ~-2 ~2 ~3 ~2 stone
execute at @e[tag=chest_trap] align xyz run fill ~3 ~ ~-2 ~4 ~2 ~2 stone
execute at @e[tag=chest_trap] align xyz run fill ~-3 ~ ~-2 ~-4 ~2 ~2 stone
execute at @e[tag=chest_trap] align xyz run fill ~-2 ~ ~3 ~2 ~2 ~3 stone
execute at @e[tag=chest_trap] align xyz run fill ~2 ~ ~-3 ~1 ~2 ~-3 stone
execute at @e[tag=chest_trap] align xyz run fill ~-2 ~ ~-3 ~-1 ~2 ~-3 stone
execute at @e[tag=chest_trap] align xyz run setblock ~ ~2 ~-3 stone

execute at @e[tag=chest_trap,scores={decoy_timer=1..}] align xyz run fill ~ ~1 ~-3 ~ ~0 ~-3 stone
execute at @e[tag=chest_trap,scores={decoy_timer=..0}] align xyz run fill ~ ~1 ~-3 ~ ~0 ~-3 air replace stone

scoreboard players add @e[tag=chest_trap] decoy_timer 0
scoreboard players add @e[tag=chest_trap,scores={decoy_timer=1..}] decoy_timer 1
scoreboard players add @e[tag=chest_trap,scores={decoy_timer=..-1}] decoy_timer 1
scoreboard players set @e[tag=chest_trap,scores={decoy_timer=250..}] decoy_timer -10

execute as @a at @s run scoreboard players set @e[tag=chest_trap,scores={decoy_timer=0},distance=..2.2] decoy_timer 1

tag @e[tag=chest_trap,scores={decoy_timer=2}] add wall_close
execute as @e[tag=chest_trap,scores={decoy_timer=220}] at @s run execute as @e[tag=st,distance=..5] run data merge entity @s {Health:0,DeathTime:19}
execute as @e[tag=chest_trap,scores={decoy_timer=199..202}] at @s run kill @a[distance=..2.5]
execute as @e[tag=chest_trap,scores={decoy_timer=200..220}] at @s run kill @e[type=item,distance=..2.5]



scoreboard players add @e[tag=wall] decoy_timer 1
scoreboard players add @e[tag=was] decoy_timer 1

execute as @e[tag=wall_left,scores={decoy_timer=1..195}] at @s run tp @s ~-0.0125 ~ ~
execute as @e[tag=wall_right,scores={decoy_timer=1..195}] at @s run tp @s ~0.0125 ~ ~
execute as @e[tag=wall_left_c] at @s positioned ~ ~-1 ~-2 run execute as @a[dy=2,dz=3,dx=-1.4] at @s run tp @s ~-0.18 ~ ~
execute as @e[tag=wall_right_c] at @s positioned ~-1 ~-1 ~-2 run execute as @a[dy=2,dz=3,dx=1.4] at @s run tp @s ~0.18 ~ ~


execute as @e[tag=as_left,scores={decoy_timer=1..195}] at @s run tp @s ~-0.0125 ~ ~
execute as @e[tag=as_right,scores={decoy_timer=1..195}] at @s run tp @s ~0.0125 ~ ~

execute as @e[tag=wall_close] at @s run summon armor_stand ~4 ~1 ~ {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:3},Count:1}],Invisible:1,Tags:["wall_left","wall","st","wall_left_c"],Marker:0,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~4 ~1 ~2 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:4},Count:1}],Invisible:1,Tags:["wall_left","wall","st"],Marker:0,DisabledSlots:4144959,NoGravity:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~4 ~1 ~-2 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:5},Count:1}],Invisible:1,Tags:["wall_left","wall","st"],Marker:0,DisabledSlots:4144959,NoGravity:1}

execute as @e[tag=wall_close] at @s run summon armor_stand ~-4 ~1 ~ {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:3},Count:1}],Invisible:1,Tags:["wall_right","wall","st","wall_right_c"],Marker:0,DisabledSlots:4144959,NoGravity:1,Rotation:[180f]}
execute as @e[tag=wall_close] at @s run summon armor_stand ~-4 ~1 ~2 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:5},Count:1}],Invisible:1,Tags:["wall_right","wall","st"],Marker:0,DisabledSlots:4144959,NoGravity:1,Rotation:[180f]}
execute as @e[tag=wall_close] at @s run summon armor_stand ~-4 ~1 ~-2 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",tag:{Unbreakable:1,Damage:4},Count:1}],Invisible:1,Tags:["wall_right","wall","st"],Marker:0,DisabledSlots:4144959,NoGravity:1,Rotation:[180f]}


execute as @e[tag=wall_close] at @s run summon armor_stand ~3 ~ ~-2 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_left","st"]}],Tags:["as_left","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~3 ~ ~-1 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_left","st"]}],Tags:["as_left","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~3 ~ ~0 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_left","st"]}],Tags:["as_left","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~3 ~ ~1 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_left","st"]}],Tags:["as_left","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~3 ~ ~2 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_left","st"]}],Tags:["as_left","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}

execute as @e[tag=wall_close] at @s run summon armor_stand ~-3 ~ ~-2 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_right","st"]}],Tags:["as_right","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~-3 ~ ~-1 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_right","st"]}],Tags:["as_right","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~-3 ~ ~0 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_right","st"]}],Tags:["as_right","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~-3 ~ ~1 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_right","st"]}],Tags:["as_right","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}
execute as @e[tag=wall_close] at @s run summon armor_stand ~-3 ~ ~2 {Passengers:[{id:"minecraft:shulker",AttachFace:0b,NoAI:1,Invulnerable:1,Silent:1,Color:7b,Tags:["shulker_right","st"]}],Tags:["as_right","st","was"],NoGravity:1,Invulnerable:1,Invisible:1,Small:1}



effect give @e[tag=shulker_left] minecraft:invisibility 99999 9 true
effect give @e[tag=shulker_right] minecraft:invisibility 99999 9 true

tag @e[tag=wall_close] remove wall_close

execute at @a[nbt={SelectedItem:{id:"minecraft:nether_star"}}] run execute at @e[tag=chest_trap,distance=..4,scores={decoy_timer=0}] run particle large_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.05 8 force
execute at @a[nbt={SelectedItem:{id:"minecraft:nether_star"}}] run kill @e[tag=chest_trap,distance=..4,scores={decoy_timer=0}]




tag @a remove give

