tp @s ~ ~ ~ facing entity @p[tag=casTemp] eyes
execute store result score y cas_rot run data get entity @s Rotation[0] 10
execute store result score x cas_rot run data get entity @s Rotation[1] 10
tag @s remove casRotation
kill @s