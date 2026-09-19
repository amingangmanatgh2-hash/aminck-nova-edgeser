# Horror func 61 - diverse real commands, coordinated with mod
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.06
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.80
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 1
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @a run summon minecraft:bat ~-1 ~12 ~-8 {CustomName:"§8Crow 61-18 by Moon",NoGravity:1b}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.23
# End func 61 - fear logic
