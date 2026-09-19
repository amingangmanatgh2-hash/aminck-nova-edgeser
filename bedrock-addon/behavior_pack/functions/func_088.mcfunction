# Horror func 88 - diverse real commands, coordinated with mod
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[distance=..8] weakness 5 0 true
execute at @a run summon minecraft:bat ~-7 ~5 ~4 {CustomName:"§8Crow 88-7 by Moon",NoGravity:1b}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.41
# End func 88 - fear logic
