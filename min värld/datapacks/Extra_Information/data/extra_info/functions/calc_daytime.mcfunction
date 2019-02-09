# get current time
execute store result score #daytime ex_info.dummy run time query daytime

# calculate hour
scoreboard players operation #hour ex_info.dummy = #daytime ex_info.dummy
scoreboard players operation #hour ex_info.dummy /= #1000 ex_info.dummy
scoreboard players operation #hour ex_info.dummy += #6 ex_info.dummy
execute if score #hour ex_info.dummy matches 24.. run scoreboard players remove #hour ex_info.dummy 24

# calculate minute
scoreboard players operation #minute ex_info.dummy = #daytime ex_info.dummy
scoreboard players operation #minute ex_info.dummy %= #1000 ex_info.dummy
scoreboard players operation #minute ex_info.dummy *= #6 ex_info.dummy
scoreboard players operation #minute ex_info.dummy /= #100 ex_info.dummy