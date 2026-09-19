# Horror func 35 - diverse real commands, coordinated with mod
effect @a[distance=..8] weakness 5 0 true
effect @a[distance=..8] weakness 5 0 true
execute at @a run summon minecraft:bat ~8 ~8 ~10 {CustomName:"§8Crow 35-2 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 0.87
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[distance=..8] weakness 5 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
# End func 35 - fear logic
