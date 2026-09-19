# Horror func 15 - diverse real commands, coordinated with mod
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.11
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:bat ~7 ~8 ~8 {CustomName:"§8Crow 15-14 by Moon",NoGravity:1b}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.03
playsound mob.ghast.scream @a ~ ~ ~ 1 1.10
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
# End func 15 - fear logic
