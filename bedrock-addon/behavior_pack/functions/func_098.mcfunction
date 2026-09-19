# Horror func 98 - diverse real commands, coordinated with mod
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[distance=..8] weakness 5 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.24
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.34
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
# End func 98 - fear logic
