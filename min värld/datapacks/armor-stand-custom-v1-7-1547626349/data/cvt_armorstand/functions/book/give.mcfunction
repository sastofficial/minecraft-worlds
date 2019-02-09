kill @e[type=minecraft:item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:book",Count:1b}}]
function cvt_armorstand:guide
advancement grant @p[distance=..3] only cvt_armorstand:get_guide
playsound minecraft:block.enchantment_table.use master @a