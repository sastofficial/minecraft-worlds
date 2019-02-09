# check if time needs to be calculated
execute store result score #daytime0 ex_info.dummy run time query daytime
execute unless score #daytime0 ex_info.dummy = #daytime ex_info.dummy run function extra_info:calc_daytime

# update players action bar
title @s times 0 1 1
execute if score #hour ex_info.dummy matches ..9 if score #minute ex_info.dummy matches ..9 run title @s actionbar [{"text":"Time: 0"}, {"score":{"name":"#hour", "objective":"ex_info.dummy"}}, {"text":":0"}, {"score":{"name":"#minute", "objective":"ex_info.dummy"}}]
execute if score #hour ex_info.dummy matches ..9 if score #minute ex_info.dummy matches 10.. run title @s actionbar [{"text":"Time: 0"}, {"score":{"name":"#hour", "objective":"ex_info.dummy"}}, {"text":":"}, {"score":{"name":"#minute", "objective":"ex_info.dummy"}}]
execute if score #hour ex_info.dummy matches 10.. if score #minute ex_info.dummy matches ..9 run title @s actionbar [{"text":"Time: "}, {"score":{"name":"#hour", "objective":"ex_info.dummy"}}, {"text":":0"}, {"score":{"name":"#minute", "objective":"ex_info.dummy"}}]
execute if score #hour ex_info.dummy matches 10.. if score #minute ex_info.dummy matches 10.. run title @s actionbar [{"text":"Time: "}, {"score":{"name":"#hour", "objective":"ex_info.dummy"}}, {"text":":"}, {"score":{"name":"#minute", "objective":"ex_info.dummy"}}]