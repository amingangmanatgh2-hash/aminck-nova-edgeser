# Horror func 16 - diverse real commands, coordinated with mod
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @a run summon minecraft:bat ~-7 ~10 ~-8 {CustomName:"§8Crow 16-4 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 1.41
effect @a[distance=..8] weakness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute at @a run summon minecraft:bat ~-2 ~15 ~1 {CustomName:"§8Crow 16-13 by Moon",NoGravity:1b}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.43
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[distance=..8] weakness 5 0 true
execute at @a run summon minecraft:bat ~9 ~6 ~-4 {CustomName:"§8Crow 16-18 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
# End func 16 - fear logic
