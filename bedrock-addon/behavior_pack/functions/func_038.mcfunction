# Horror func 38 - diverse real commands, coordinated with mod
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.83
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.39
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.ghast.scream @a ~ ~ ~ 1 0.76
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[distance=..8] weakness 5 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
# End func 38 - fear logic
