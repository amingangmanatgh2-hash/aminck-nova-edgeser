# Horror func 84 - diverse real commands, coordinated with mod
scoreboard players add @a novahorror.fear 1
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.42
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.14
effect @a[distance=..8] weakness 5 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute at @a run summon minecraft:bat ~-6 ~10 ~1 {CustomName:"§8Crow 84-15 by Moon",NoGravity:1b}
effect @a[distance=..8] weakness 5 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[distance=..8] weakness 5 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
# End func 84 - fear logic
