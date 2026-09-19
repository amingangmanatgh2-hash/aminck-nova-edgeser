# Horror func 68 - diverse real commands, coordinated with mod
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[distance=..8] weakness 5 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:bat ~-2 ~6 ~1 {CustomName:"§8Crow 68-5 by Moon",NoGravity:1b}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.44
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~-2 ~7 ~5 {CustomName:"§8Crow 68-14 by Moon",NoGravity:1b}
playsound mob.ghast.scream @a ~ ~ ~ 1 0.59
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.15
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.93
# End func 68 - fear logic
