execute store result score @s x run data get entity @s Pos[0] 256
scoreboard players operation Global dx = @s x
scoreboard players operation Global dx -= Global ballx
scoreboard players operation @s dx = Global dx
execute store result score @s y run data get entity @s Pos[1] 256
scoreboard players operation Global dy = @s y
scoreboard players operation Global dy -= Global bally
scoreboard players operation @s dy = Global dy
execute store result score @s z run data get entity @s Pos[2] 256
scoreboard players operation Global dz = @s z
scoreboard players operation Global dz -= Global ballz
scoreboard players operation @s dz = Global dz
scoreboard players operation Global distsq = @s dx
scoreboard players operation Global scratch3 = Global distsq
scoreboard players operation Global scratch3 *= Global distsq
scoreboard players operation Global distsq = Global scratch3
scoreboard players operation Global scratch3 = @s dy
scoreboard players operation Global scratch4 = Global scratch3
scoreboard players operation Global scratch4 *= Global scratch3
scoreboard players operation Global distsq += Global scratch4
scoreboard players operation Global scratch3 = @s dz
scoreboard players operation Global scratch4 = Global scratch3
scoreboard players operation Global scratch4 *= Global scratch3
scoreboard players operation Global distsq += Global scratch4
scoreboard players operation Global sizesq = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] radius
scoreboard players operation Global sizesq *= c2 Constant
scoreboard players operation Global scratch3 = Global sizesq
scoreboard players operation Global scratch3 *= Global sizesq
scoreboard players operation Global sizesq = Global scratch3
scoreboard players set @s mass 20
scoreboard players set @s[type=minecraft:chicken] mass 15
scoreboard players set @s[type=minecraft:pig] mass 35
scoreboard players set @s[type=minecraft:sheep] mass 50
scoreboard players set @s[type=minecraft:cow] mass 75
scoreboard players set @s[type=minecraft:bat] mass 10
scoreboard players set @s[type=minecraft:blaze] mass 50
scoreboard players set @s[type=minecraft:boat] mass 25
scoreboard players set @s[type=minecraft:cave_spider] mass 20
scoreboard players set @s[type=minecraft:chest_minecart] mass 40
scoreboard players set @s[type=minecraft:cod] mass 15
scoreboard players set @s[type=minecraft:creeper] mass 50
scoreboard players set @s[type=minecraft:dolphin] mass 75
scoreboard players set @s[type=minecraft:donkey] mass 75
scoreboard players set @s[type=minecraft:drowned] mass 50
scoreboard players set @s[type=minecraft:egg] mass 30
scoreboard players set @s[type=minecraft:elder_guardian] mass 120
scoreboard players set @s[type=minecraft:end_crystal] mass 30
scoreboard players set @s[type=minecraft:ender_dragon] mass 600
scoreboard players set @s[type=minecraft:enderman] mass 100
scoreboard players set @s[type=minecraft:endermite] mass 10
scoreboard players set @s[type=minecraft:evoker] mass 50
scoreboard players set @s[type=minecraft:furnace_minecart] mass 75
scoreboard players set @s[type=minecraft:ghast] mass 400
scoreboard players set @s[type=minecraft:giant] mass 800
scoreboard players set @s[type=minecraft:guardian] mass 100
scoreboard players set @s[type=minecraft:hopper_minecart] mass 75
scoreboard players set @s[type=minecraft:horse] mass 100
scoreboard players set @s[type=minecraft:husk] mass 50
scoreboard players set @s[type=minecraft:illusioner] mass 50
scoreboard players set @s[type=minecraft:iron_golem] mass 140
scoreboard players set @s[type=minecraft:item] mass 5
scoreboard players set @s[type=minecraft:llama] mass 100
scoreboard players set @s[type=minecraft:magma_cube] mass 50
scoreboard players set @s[type=minecraft:minecart] mass 50
scoreboard players set @s[type=minecraft:mooshroom] mass 75
scoreboard players set @s[type=minecraft:mule] mass 75
scoreboard players set @s[type=minecraft:ocelot] mass 40
scoreboard players set @s[type=minecraft:parrot] mass 15
scoreboard players set @s[type=minecraft:phantom] mass 50
scoreboard players set @s[type=minecraft:polar_bear] mass 130
scoreboard players set @s[type=minecraft:potion] mass 10
scoreboard players set @s[type=minecraft:pufferfish] mass 15
scoreboard players set @s[type=minecraft:rabbit] mass 15
scoreboard players set @s[type=minecraft:salmon] mass 10
scoreboard players set @s[type=minecraft:shulker] mass 50
scoreboard players set @s[type=minecraft:silverfish] mass 10
scoreboard players set @s[type=minecraft:skeleton] mass 50
scoreboard players set @s[type=minecraft:skeleton_horse] mass 100
scoreboard players set @s[type=minecraft:slime] mass 50
scoreboard players set @s[type=minecraft:snow_golem] mass 45
scoreboard players set @s[type=minecraft:spider] mass 60
scoreboard players set @s[type=minecraft:squid] mass 40
scoreboard players set @s[type=minecraft:stray] mass 50
scoreboard players set @s[type=minecraft:tnt] mass 50
scoreboard players set @s[type=minecraft:tnt_minecart] mass 75
scoreboard players set @s[type=minecraft:tropical_fish] mass 10
scoreboard players set @s[type=minecraft:turtle] mass 30
scoreboard players set @s[type=minecraft:vex] mass 50
scoreboard players set @s[type=minecraft:villager] mass 50
scoreboard players set @s[type=minecraft:vindicator] mass 50
scoreboard players set @s[type=minecraft:witch] mass 50
scoreboard players set @s[type=minecraft:wither] mass 400
scoreboard players set @s[type=minecraft:wither_skeleton] mass 70
scoreboard players set @s[type=minecraft:wolf] mass 50
scoreboard players set @s[type=minecraft:zombie] mass 50
scoreboard players set @s[type=minecraft:zombie_horse] mass 100
scoreboard players set @s[type=minecraft:zombie_pigman] mass 50
scoreboard players set @s[type=minecraft:zombie_villager] mass 50
scoreboard players operation Global mass_ratio = @e[type=minecraft:slime,name=Katamari,limit=1,scores={current_ball=1..}] mass
scoreboard players operation Global mass_ratio /= @s mass
execute if score Global distsq < Global sizesq if score Global mass_ratio matches 5.. run function katamari:execute9