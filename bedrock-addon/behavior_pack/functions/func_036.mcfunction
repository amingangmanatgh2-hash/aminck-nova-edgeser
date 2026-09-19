# Horror func 36 - diverse real commands, coordinated with mod
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~3 ~13 ~-3 {CustomName:"§8Crow 36-2 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.61
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
scoreboard players add @a novahorror.fear 1
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.41
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:bat ~7 ~13 ~-2 {CustomName:"§8Crow 36-16 by Moon",NoGravity:1b}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
# End func 36 - fear logic
