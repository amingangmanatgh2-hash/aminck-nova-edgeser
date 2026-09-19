# Horror func 46 - diverse real commands, coordinated with mod
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.47
scoreboard players add @a[distance=..5] novahorror.dark 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
scoreboard players add @a novahorror.fear 1
scoreboard players add @a[distance=..5] novahorror.dark 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.78
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
# End func 46 - fear logic
