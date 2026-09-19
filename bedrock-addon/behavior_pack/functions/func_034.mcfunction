# Horror func 34 - diverse real commands, coordinated with mod
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.91
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~5 ~14 ~9 {CustomName:"§8Crow 34-6 by Moon",NoGravity:1b}
effect @a[distance=..8] weakness 5 0 true
effect @a[distance=..8] weakness 5 0 true
execute at @a run summon minecraft:bat ~-4 ~11 ~4 {CustomName:"§8Crow 34-9 by Moon",NoGravity:1b}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute at @a run summon minecraft:bat ~-8 ~6 ~-9 {CustomName:"§8Crow 34-11 by Moon",NoGravity:1b}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.ghast.scream @a ~ ~ ~ 1 0.63
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.38
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
effect @a[distance=..8] weakness 5 0 true
# End func 34 - fear logic
