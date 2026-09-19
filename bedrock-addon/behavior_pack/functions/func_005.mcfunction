# Horror func 5 - diverse real commands, coordinated with mod
playsound mob.ghast.scream @a ~ ~ ~ 1 0.95
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.96
playsound mob.ghast.scream @a ~ ~ ~ 1 0.59
execute at @a run summon minecraft:bat ~-6 ~9 ~6 {CustomName:"§8Crow 5-6 by Moon",NoGravity:1b}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
scoreboard players add @a[distance=..5] novahorror.dark 1
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
# End func 5 - fear logic
