scoreboard objectives add ex_info.dummy dummy {"text":"Extra Info Dummies"}
scoreboard players set #daytime ex_info.dummy 0
scoreboard players set #daytime0 ex_info.dummy 0
scoreboard players set #ampm ex_info.dummy 0
scoreboard players set #hour ex_info.dummy 0
scoreboard players set #minute ex_info.dummy 0
scoreboard players set #6 ex_info.dummy 6
scoreboard players set #100 ex_info.dummy 100
scoreboard players set #1000 ex_info.dummy 1000

scoreboard objectives add ex_info.x dummy {"text":"Extra Info X coord"}
scoreboard objectives add ex_info.z dummy {"text":"Extra Info Z coord"}
scoreboard objectives add ex_info.bear dummy {"text":"Extra Info Bearing"}

function extra_info:config