# Horror func 41 - diverse real commands, coordinated with mod
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.35
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[distance=..8] weakness 5 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.34
execute at @a run summon minecraft:bat ~2 ~9 ~3 {CustomName:"§8Crow 41-18 by Moon",NoGravity:1b}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
# End func 41 - fear logic
