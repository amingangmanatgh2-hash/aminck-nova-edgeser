# Horror func 52 - diverse real commands, coordinated with mod
execute at @a run summon minecraft:bat ~-1 ~11 ~-5 {CustomName:"§8Crow 52-0 by Moon",NoGravity:1b}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.30
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[distance=..8] weakness 5 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
scoreboard players add @a novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 1 1.42
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
# End func 52 - fear logic
