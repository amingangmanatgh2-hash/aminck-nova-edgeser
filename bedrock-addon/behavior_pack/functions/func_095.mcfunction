# Horror func 95 - diverse real commands, coordinated with mod
execute at @a run summon minecraft:bat ~0 ~11 ~0 {CustomName:"§8Crow 95-0 by Moon",NoGravity:1b}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.76
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.15
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.31
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute at @a run summon minecraft:bat ~-9 ~9 ~0 {CustomName:"§8Crow 95-7 by Moon",NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.39
# End func 95 - fear logic
