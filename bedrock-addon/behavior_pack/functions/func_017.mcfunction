# Horror func 17 - diverse real commands, coordinated with mod
scoreboard players add @a novahorror.fear 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute at @a run summon minecraft:bat ~6 ~15 ~2 {CustomName:"§8Crow 17-17 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
# End func 17 - fear logic
