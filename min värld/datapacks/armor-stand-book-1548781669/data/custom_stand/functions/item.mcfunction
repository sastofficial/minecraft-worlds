tag @s add casItem
execute if entity @s[nbt={Item:{id:"minecraft:written_book",tag:{display:{Name:"{\"text\":\"Customize Armor Stands\",\"color\":\"green\",\"italic\":false}"}}}}] run data merge entity @s {Invulnerable:1b,Age:-32768s}