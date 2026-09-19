# Horror func 73 - diverse real commands, coordinated with mod
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute at @a run summon minecraft:bat ~3 ~9 ~0 {CustomName:"§8Crow 73-8 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.78
scoreboard players add @a[distance=..5] novahorror.dark 1
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
scoreboard players add @a novahorror.fear 1
effect @a[distance=..8] weakness 5 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
# End func 73 - fear logic
