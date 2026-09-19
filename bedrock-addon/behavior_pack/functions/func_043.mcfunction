# Horror func 43 - diverse real commands, coordinated with mod
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.06
execute at @a run summon minecraft:bat ~-1 ~7 ~9 {CustomName:"§8Crow 43-3 by Moon",NoGravity:1b}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
scoreboard players add @a[distance=..5] novahorror.dark 1
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[distance=..8] weakness 5 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.06
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
# End func 43 - fear logic
