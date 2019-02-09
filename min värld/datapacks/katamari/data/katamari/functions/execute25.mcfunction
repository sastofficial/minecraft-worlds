scoreboard players reset @a scratch1
scoreboard players operation @a scratch1 = Global leftx
scoreboard players reset @a scratch2
scoreboard players operation @a scratch2 = Global lefty
scoreboard players reset @a scratch3
scoreboard players operation @a scratch3 = Global leftz
tellraw @a ["",{"text":"leftxyz "},{"score":{"name":"@p","objective":"scratch1"}},{"text":" "},{"score":{"name":"@p","objective":"scratch2"}},{"text":" "},{"score":{"name":"@p","objective":"scratch3"}}]
scoreboard players reset @a scratch1
scoreboard players operation @a scratch1 = Global curdx
scoreboard players reset @a scratch2
scoreboard players operation @a scratch2 = Global curdy
scoreboard players reset @a scratch3
scoreboard players operation @a scratch3 = Global curdz
tellraw @a ["",{"text":"curdxyz "},{"score":{"name":"@p","objective":"scratch1"}},{"text":" "},{"score":{"name":"@p","objective":"scratch2"}},{"text":" "},{"score":{"name":"@p","objective":"scratch3"}}]
scoreboard players reset @a scratch1
scoreboard players operation @a scratch1 = Global dot
tellraw @a ["",{"text":"dot "},{"score":{"name":"@p","objective":"scratch1"}}]
scoreboard players reset @a scratch1
scoreboard players operation @a scratch1 = Global px
scoreboard players reset @a scratch2
scoreboard players operation @a scratch2 = Global py
scoreboard players reset @a scratch3
scoreboard players operation @a scratch3 = Global pz
tellraw @a ["",{"text":"pxyz "},{"score":{"name":"@p","objective":"scratch1"}},{"text":" "},{"score":{"name":"@p","objective":"scratch2"}},{"text":" "},{"score":{"name":"@p","objective":"scratch3"}}]
scoreboard players reset @a scratch1
scoreboard players operation @a scratch1 = Global pdx
scoreboard players reset @a scratch2
scoreboard players operation @a scratch2 = Global pdy
scoreboard players reset @a scratch3
scoreboard players operation @a scratch3 = Global pdz
tellraw @a ["",{"text":"pdxyz "},{"score":{"name":"@p","objective":"scratch1"}},{"text":" "},{"score":{"name":"@p","objective":"scratch2"}},{"text":" "},{"score":{"name":"@p","objective":"scratch3"}}]
scoreboard players reset @a scratch1
scoreboard players operation @a scratch1 = Global dirx
scoreboard players reset @a scratch2
scoreboard players operation @a scratch2 = Global diry
scoreboard players reset @a scratch3
scoreboard players operation @a scratch3 = Global dirz
tellraw @a ["",{"text":"dirxyz "},{"score":{"name":"@p","objective":"scratch1"}},{"text":" "},{"score":{"name":"@p","objective":"scratch2"}},{"text":" "},{"score":{"name":"@p","objective":"scratch3"}}]
scoreboard players reset @a scratch1
scoreboard players operation @a scratch1 = Global pdist
tellraw @a ["",{"text":"pdist "},{"score":{"name":"@p","objective":"scratch1"}}]
scoreboard players remove Global Debug 1