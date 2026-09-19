# Horror func 14 - diverse real commands, coordinated with mod
playsound mob.ghast.scream @a ~ ~ ~ 1 0.40
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.45
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.ghast.scream @a ~ ~ ~ 1 0.68
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:bat ~8 ~9 ~4 {CustomName:"§8Crow 14-17 by Moon",NoGravity:1b}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
# End func 14 - fear logic
