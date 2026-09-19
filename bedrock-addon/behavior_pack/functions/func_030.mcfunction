# Horror func 30 - diverse real commands, coordinated with mod
effect @a[distance=..8] weakness 5 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.59
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.40
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.48
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[distance=..8] weakness 5 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
scoreboard players add @a[distance=..5] novahorror.dark 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.94
effect @a[distance=..8] weakness 5 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
execute at @a run summon minecraft:bat ~-3 ~9 ~0 {CustomName:"§8Crow 30-17 by Moon",NoGravity:1b}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
# End func 30 - fear logic
