# Horror func 92 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
scoreboard players add @a novahorror.fear 1
effect @a[distance=..8] weakness 5 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~-9 ~13 ~-8 {CustomName:"§8Crow 92-4 by Moon",NoGravity:1b}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[distance=..8] weakness 5 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:bat ~-8 ~10 ~8 {CustomName:"§8Crow 92-10 by Moon",NoGravity:1b}
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
scoreboard players add @a novahorror.fear 1
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.77
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.07
# End func 92 - fear logic
