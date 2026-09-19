# Horror func 27 - diverse real commands, coordinated with mod
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.95
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute at @a run summon minecraft:bat ~10 ~6 ~-3 {CustomName:"§8Crow 27-6 by Moon",NoGravity:1b}
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~6 ~13 ~-6 {CustomName:"§8Crow 27-10 by Moon",NoGravity:1b}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.54
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.ghast.scream @a ~ ~ ~ 1 0.46
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
# End func 27 - fear logic
