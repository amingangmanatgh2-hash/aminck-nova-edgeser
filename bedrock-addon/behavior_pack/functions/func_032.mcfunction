# Horror func 32 - diverse real commands, coordinated with mod
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[distance=..8] weakness 5 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.40
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute at @a run summon minecraft:bat ~2 ~13 ~-4 {CustomName:"§8Crow 32-6 by Moon",NoGravity:1b}
effect @a[distance=..8] weakness 5 0 true
execute at @a run summon minecraft:bat ~-8 ~14 ~-10 {CustomName:"§8Crow 32-8 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.84
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 1.37
# End func 32 - fear logic
