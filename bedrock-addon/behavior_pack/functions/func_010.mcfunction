# Horror func 10 - diverse real commands, coordinated with mod
scoreboard players add @a[distance=..5] novahorror.dark 1
execute at @a run summon minecraft:bat ~8 ~6 ~3 {CustomName:"§8Crow 10-1 by Moon",NoGravity:1b}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute at @a run summon minecraft:bat ~-3 ~5 ~-2 {CustomName:"§8Crow 10-8 by Moon",NoGravity:1b}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.49
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.32
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
# End func 10 - fear logic
