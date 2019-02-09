data merge entity @s {NoGravity:1b}
kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:popped_chorus_fruit",Count:1b}}]
particle minecraft:effect ~ ~ ~ 0.5 0.5 0.5 1 300 normal @a
playsound minecraft:entity.illusioner.prepare_blindness master @a