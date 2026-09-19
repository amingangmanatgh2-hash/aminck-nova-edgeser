# Horror func 86 - diverse real commands, coordinated with mod
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.95
execute at @a run summon minecraft:bat ~-10 ~13 ~1 {CustomName:"§8Crow 86-5 by Moon",NoGravity:1b}
execute at @a run summon minecraft:bat ~10 ~15 ~-4 {CustomName:"§8Crow 86-6 by Moon",NoGravity:1b}
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.ghast.scream @a ~ ~ ~ 1 0.60
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.37
execute at @a run summon minecraft:bat ~6 ~15 ~7 {CustomName:"§8Crow 86-11 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute at @a run summon minecraft:bat ~-4 ~6 ~-5 {CustomName:"§8Crow 86-18 by Moon",NoGravity:1b}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
# End func 86 - fear logic
