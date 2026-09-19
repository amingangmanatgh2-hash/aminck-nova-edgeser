# Horror func 96 - diverse real commands, coordinated with mod
effect @a[distance=..8] weakness 5 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.53
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[distance=..8] weakness 5 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
# End func 96 - fear logic
