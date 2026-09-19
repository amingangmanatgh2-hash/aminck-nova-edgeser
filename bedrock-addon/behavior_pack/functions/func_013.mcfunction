# Horror func 13 - diverse real commands, coordinated with mod
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
effect @a[distance=..8] weakness 5 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.49
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[distance=..8] weakness 5 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
# End func 13 - fear logic
