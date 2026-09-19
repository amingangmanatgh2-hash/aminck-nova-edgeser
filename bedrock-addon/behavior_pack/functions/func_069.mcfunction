# Horror func 69 - diverse real commands, coordinated with mod
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:bat ~-9 ~6 ~10 {CustomName:"§8Crow 69-5 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[distance=..8] weakness 5 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.46
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
# End func 69 - fear logic
