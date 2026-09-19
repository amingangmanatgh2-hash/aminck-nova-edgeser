# Horror func 31 - diverse real commands, coordinated with mod
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute at @a run summon minecraft:bat ~-2 ~9 ~10 {CustomName:"§8Crow 31-1 by Moon",NoGravity:1b}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
scoreboard players add @a novahorror.fear 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.ghast.scream @a ~ ~ ~ 1 1.31
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.37
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.56
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
# End func 31 - fear logic
