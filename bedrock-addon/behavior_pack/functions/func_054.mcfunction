# Horror func 54 - diverse real commands, coordinated with mod
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.52
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.78
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[distance=..8] weakness 5 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound mob.ghast.scream @a ~ ~ ~ 1 1.43
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
# End func 54 - fear logic
