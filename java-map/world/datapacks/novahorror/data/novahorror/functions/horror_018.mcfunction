# Horror function 18 - Ravenshollow
# Coordinated with mod and command blocks
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.4 0.1 10
title @a[scores={novahorror.fear=94..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.8 0.6 0.5 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.4 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.8 0.1 10
particle minecraft:ash ~ ~1 ~ 0.2 0.0 0.2 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-12","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 0 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.42
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=77..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.5 0.7 0.3 0.1 10
particle minecraft:ash ~ ~1 ~ 0.7 0.8 0.6 0.1 10
particle minecraft:ash ~ ~1 ~ 0.9 0.4 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.59
particle minecraft:ash ~ ~1 ~ 0.8 0.0 0.9 0.1 10
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-27","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-28","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.42
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.30
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.40
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-34","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-38","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.59
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-44","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.35
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.8 0.4 0.5 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=93..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-53","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 2 true
title @a[scores={novahorror.fear=60..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.8 0.6 0.4 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.73
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=81..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-62","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.22
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=24..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-71","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-72","color":"gray","italic":true}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.67
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-74","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.82
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-77","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.9 1.0 0.6 0.1 10
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 4 0 true
effect give @a[distance=..10] minecraft:darkness 3 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.3 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-86","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-87","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.9 0.7 0.6 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.84
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=30..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.99
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-97","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-100","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.5 0.8 0.6 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 0 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.48
title @a[scores={novahorror.fear=68..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.68
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-111","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 0 true
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 2 1 true
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.23
particle minecraft:ash ~ ~1 ~ 0.9 0.4 0.2 0.1 10
particle minecraft:ash ~ ~1 ~ 0.7 0.5 0.1 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-120","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.6 0.4 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 0 true
title @a[scores={novahorror.fear=77..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
effect give @a[distance=..10] minecraft:darkness 2 1 true
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-132","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.3 0.3 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-138","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.86
effect give @a[distance=..10] minecraft:darkness 3 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 18-141","color":"gray","italic":true}
title @a[scores={novahorror.fear=86..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.3 0.8 0.1 10
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.94
