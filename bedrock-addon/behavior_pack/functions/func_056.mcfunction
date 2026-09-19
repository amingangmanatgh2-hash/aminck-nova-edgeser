# Horror func 56 - diverse real commands, coordinated with mod
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.45
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.ghast.scream @a ~ ~ ~ 1 1.48
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.47
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute at @a run summon minecraft:bat ~-8 ~14 ~-10 {CustomName:"§8Crow 56-17 by Moon",NoGravity:1b}
effect @a[distance=..8] weakness 5 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
# End func 56 - fear logic
