execute if score Reward Reward matches 1 run give @s minecraft:ender_pearl 4
execute if score Reward Reward matches 1 run tellraw @s {"color":"green","text":" +4 Ender Pearls"}
execute if score Reward Reward matches 1 run give @s minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:knockback",lvl:1}]} 1
execute if score Reward Reward matches 1 run tellraw @s {"color":"green","text":" +1 Knockback I Enchanted Book"}
execute if score Reward Reward matches 1 run tellraw @s {"color":"blue","text":" +50 experience"}