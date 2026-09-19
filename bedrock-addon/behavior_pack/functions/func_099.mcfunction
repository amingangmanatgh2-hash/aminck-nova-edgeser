# Horror func 99 - diverse real commands, coordinated with mod
playsound mob.ghast.scream @a ~ ~ ~ 1 1.43
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute at @a run summon minecraft:bat ~-7 ~6 ~3 {CustomName:"§8Crow 99-3 by Moon",NoGravity:1b}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
scoreboard players add @a[distance=..5] novahorror.dark 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[distance=..8] weakness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.17
execute at @a run summon minecraft:bat ~-9 ~15 ~1 {CustomName:"§8Crow 99-18 by Moon",NoGravity:1b}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.29
# End func 99 - fear logic
