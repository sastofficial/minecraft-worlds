tag @p add casTemp
execute if entity @s[tag=casLookAll] run function custom_stand:customize/rotate_at/all
execute if entity @s[tag=casLookHead] run function custom_stand:customize/rotate_at/head
execute if entity @s[tag=casLookRight] run function custom_stand:customize/rotate_at/right_arm
execute if entity @s[tag=casLookLeft] run function custom_stand:customize/rotate_at/left_arm
tag @p[tag=casTemp] remove casTemp