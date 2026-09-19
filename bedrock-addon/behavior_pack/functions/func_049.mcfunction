# Horror func 49 - diverse real commands, coordinated with mod
execute at @a run summon minecraft:bat ~3 ~13 ~-3 {CustomName:"§8Crow 49-0 by Moon",NoGravity:1b}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.55
playsound mob.ghast.scream @a ~ ~ ~ 1 1.04
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:bat ~3 ~15 ~4 {CustomName:"§8Crow 49-13 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[distance=..8] weakness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
# End func 49 - fear logic
