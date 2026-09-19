# Horror func 44 - diverse real commands, coordinated with mod
scoreboard players add @a[distance=..5] novahorror.dark 1
scoreboard players add @a[distance=..5] novahorror.dark 1
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
scoreboard players add @a[distance=..5] novahorror.dark 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 0.68
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.31
# End func 44 - fear logic
