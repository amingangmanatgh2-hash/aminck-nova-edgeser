# Horror func 1 - diverse real commands, coordinated with mod
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute at @a run summon minecraft:bat ~-3 ~8 ~5 {CustomName:"§8Crow 1-9 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.31
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
# End func 1 - fear logic
