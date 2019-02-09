gamerule sendCommandFeedback false
gamerule commandBlockOutput false
scoreboard objectives add cas_rot dummy
scoreboard objectives add cas_click trigger
scoreboard objectives add rotation_x trigger
scoreboard objectives add rotation_y trigger
scoreboard objectives add rotation_z trigger
scoreboard objectives add cas_uuidleast_q dummy
scoreboard objectives add cas_uuidmost_q dummy
scoreboard objectives add cas_pos dummy
scoreboard players set 6 cas_pos 6
scoreboard players set 10000 cas_pos 10000
team add red
team add orange
team add yellow
team add green
team add blue
team add purple
team modify red color dark_red
team modify orange color gold
team modify yellow color yellow
team modify green color green
team modify blue color blue
team modify purple color dark_purple
scoreboard players enable @a cas_click
scoreboard players enable @a rotation_x
scoreboard players enable @a rotation_y
scoreboard players enable @a rotation_z