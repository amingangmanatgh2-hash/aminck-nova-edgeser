# Horror func 97 - diverse real commands, coordinated with mod
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.51
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[distance=..8] weakness 5 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
scoreboard players add @a novahorror.fear 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
# End func 97 - fear logic
