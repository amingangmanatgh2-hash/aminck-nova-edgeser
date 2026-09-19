# Horror function 12 - Ravenshollow
# Coordinated with mod and command blocks
particle minecraft:ash ~ ~1 ~ 0.7 0.9 0.6 0.1 10
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.06
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-6","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 0 true
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.6 0.1 0.9 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=34..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.9 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-17","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 0 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.11
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-20","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=68..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.18
particle minecraft:ash ~ ~1 ~ 0.8 0.1 0.1 0.1 10
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 2 true
title @a[scores={novahorror.fear=32..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.0 0.5 0.9 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.46
title @a[scores={novahorror.fear=44..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.46
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.20
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.82
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 1 true
title @a[scores={novahorror.fear=25..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.24
title @a[scores={novahorror.fear=59..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 2 true
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.32
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.31
particle minecraft:ash ~ ~1 ~ 0.9 0.1 0.5 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-50","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.1 0.2 0.8 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-54","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=56..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 2 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.23
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.14
effect give @a[distance=..10] minecraft:darkness 2 2 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.35
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.00
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.29
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.92
particle minecraft:ash ~ ~1 ~ 0.5 0.7 0.0 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.32
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=35..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-76","color":"gray","italic":true}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.61
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.93
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.3 0.2 1.0 0.1 10
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-85","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=68..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.39
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-90","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 2 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 10
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.42
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.96
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.9 0.2 0.3 0.1 10
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-100","color":"gray","italic":true}
title @a[scores={novahorror.fear=49..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=20..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.7 0.4 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 1 true
title @a[scores={novahorror.fear=86..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.36
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-121","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.7 0.2 0.3 0.1 10
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=92..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-125","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 12-130","color":"gray","italic":true}
title @a[scores={novahorror.fear=68..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.1 0.1 0.9 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 3 2 true
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.5 0.3 0.4 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.57
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.70
title @a[scores={novahorror.fear=67..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.70
title @a[scores={novahorror.fear=28..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 2 true
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.8 0.7 0.6 0.1 10
