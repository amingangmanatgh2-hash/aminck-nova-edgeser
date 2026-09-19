# Horror func 45 - diverse real commands, coordinated with mod
scoreboard players add @a[distance=..5] novahorror.dark 1
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 1 0.88
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
# End func 45 - fear logic
