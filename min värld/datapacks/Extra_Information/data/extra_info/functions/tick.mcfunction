execute as @a[nbt={SelectedItem:{id:"minecraft:filled_map"}, Dimension:0}] unless score #map0 ex_info.dummy matches 1.. run function extra_info:obfus_map
execute as @a[nbt={SelectedItem:{id:"minecraft:filled_map"}, Dimension:0}] unless score #map0 ex_info.dummy matches ..0 run function extra_info:holding_map
execute as @a[nbt={SelectedItem:{id:"minecraft:filled_map"}, Dimension:1}] unless score #map1 ex_info.dummy matches 1.. run function extra_info:obfus_map
execute as @a[nbt={SelectedItem:{id:"minecraft:filled_map"}, Dimension:1}] unless score #map1 ex_info.dummy matches ..0 run function extra_info:holding_map
execute as @a[nbt={SelectedItem:{id:"minecraft:filled_map"}, Dimension:-1}] unless score #map-1 ex_info.dummy matches 1.. run function extra_info:obfus_map
execute as @a[nbt={SelectedItem:{id:"minecraft:filled_map"}, Dimension:-1}] unless score #map-1 ex_info.dummy matches ..0 run function extra_info:holding_map

execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}, Dimension:0}] unless score #compass0 ex_info.dummy matches 1.. run function extra_info:obfus_compass
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}, Dimension:0}] unless score #compass0 ex_info.dummy matches ..0 run function extra_info:holding_compass
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}, Dimension:1}] unless score #compass1 ex_info.dummy matches 1.. run function extra_info:obfus_compass
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}, Dimension:1}] unless score #compass1 ex_info.dummy matches ..0 run function extra_info:holding_compass
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}, Dimension:-1}] unless score #compass-1 ex_info.dummy matches 1.. run function extra_info:obfus_compass
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}, Dimension:-1}] unless score #compass-1 ex_info.dummy matches ..0 run function extra_info:holding_compass

execute as @a[nbt={SelectedItem:{id:"minecraft:clock"}, Dimension:0}] unless score #clock0 ex_info.dummy matches 1.. run function extra_info:obfus_clock
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"}, Dimension:0}] unless score #clock0 ex_info.dummy matches ..0 run function extra_info:holding_clock
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"}, Dimension:1}] unless score #clock1 ex_info.dummy matches 1.. run function extra_info:obfus_clock
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"}, Dimension:1}] unless score #clock1 ex_info.dummy matches ..0 run function extra_info:holding_clock
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"}, Dimension:-1}] unless score #clock-1 ex_info.dummy matches 1.. run function extra_info:obfus_clock
execute as @a[nbt={SelectedItem:{id:"minecraft:clock"}, Dimension:-1}] unless score #clock-1 ex_info.dummy matches ..0 run function extra_info:holding_clock