# Horror func 3 - diverse real commands, coordinated with mod
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 1 0.51
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:bat ~10 ~8 ~10 {CustomName:"§8Crow 3-7 by Moon",NoGravity:1b}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.16
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.69
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute at @a run summon minecraft:bat ~-6 ~15 ~9 {CustomName:"§8Crow 3-13 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute at @a run summon minecraft:bat ~-3 ~7 ~10 {CustomName:"§8Crow 3-17 by Moon",NoGravity:1b}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.94
scoreboard players add @a novahorror.fear 1
# End func 3 - fear logic
