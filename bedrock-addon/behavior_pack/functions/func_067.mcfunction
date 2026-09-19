# Horror func 67 - diverse real commands, coordinated with mod
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.67
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.78
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute at @a run summon minecraft:bat ~-4 ~14 ~3 {CustomName:"§8Crow 67-7 by Moon",NoGravity:1b}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute at @a run summon minecraft:bat ~-2 ~15 ~-4 {CustomName:"§8Crow 67-9 by Moon",NoGravity:1b}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:bat ~-3 ~13 ~7 {CustomName:"§8Crow 67-14 by Moon",NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[distance=..8] weakness 5 0 true
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
# End func 67 - fear logic
