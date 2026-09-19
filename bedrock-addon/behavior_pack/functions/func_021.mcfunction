# Horror func 21 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.93
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute at @a run summon minecraft:bat ~-8 ~9 ~-1 {CustomName:"§8Crow 21-10 by Moon",NoGravity:1b}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.78
playsound mob.ghast.scream @a ~ ~ ~ 1 0.51
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
# End func 21 - fear logic
