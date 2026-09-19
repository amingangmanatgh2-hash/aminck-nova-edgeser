# Horror func 81 - diverse real commands, coordinated with mod
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.17
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.94
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[distance=..8] weakness 5 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
# End func 81 - fear logic
