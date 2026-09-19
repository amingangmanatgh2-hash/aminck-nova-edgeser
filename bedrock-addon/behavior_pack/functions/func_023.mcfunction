# Horror func 23 - diverse real commands, coordinated with mod
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.ghast.scream @a ~ ~ ~ 1 1.48
effect @a[distance=..8] weakness 5 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.ghast.scream @a ~ ~ ~ 1 0.63
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.49
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
# End func 23 - fear logic
