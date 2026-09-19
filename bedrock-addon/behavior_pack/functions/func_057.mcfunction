# Horror func 57 - diverse real commands, coordinated with mod
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[distance=..8] weakness 5 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.50
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.02
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.53
# End func 57 - fear logic
