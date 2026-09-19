# Horror func 62 - diverse real commands, coordinated with mod
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
scoreboard players add @a novahorror.fear 1
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.ghast.scream @a ~ ~ ~ 1 0.42
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
scoreboard players add @a novahorror.fear 1
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.99
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
# End func 62 - fear logic
