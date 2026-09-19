# Horror func 40 - diverse real commands, coordinated with mod
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.43
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @a run summon minecraft:bat ~-10 ~12 ~-9 {CustomName:"§8Crow 40-3 by Moon",NoGravity:1b}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.ghast.scream @a ~ ~ ~ 1 0.81
effect @a[distance=..8] weakness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute at @a run summon minecraft:bat ~7 ~9 ~-6 {CustomName:"§8Crow 40-12 by Moon",NoGravity:1b}
scoreboard players add @a[distance=..5] novahorror.dark 1
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
# End func 40 - fear logic
