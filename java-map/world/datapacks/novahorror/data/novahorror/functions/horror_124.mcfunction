# Horror function 124 - Ravenshollow
# Coordinated with mod and command blocks
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.24
title @a[scores={novahorror.fear=32..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.2 0.5 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.36
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=49..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-10","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-11","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=20..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.83
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.8 0.5 0.8 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-18","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 2 true
particle minecraft:ash ~ ~1 ~ 0.9 0.1 0.5 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 2 true
particle minecraft:ash ~ ~1 ~ 0.9 0.1 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.7 0.4 0.9 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-27","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-29","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.02
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-34","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.0 0.2 0.2 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-36","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-37","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 1 true
title @a[scores={novahorror.fear=24..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.87
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-43","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.7 0.2 0.8 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=81..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-48","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.6 0.1 10
title @a[scores={novahorror.fear=78..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-52","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.4 0.9 0.1 10
particle minecraft:ash ~ ~1 ~ 0.0 0.1 0.1 0.1 10
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.9 0.4 0.5 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 1 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.09
title @a[scores={novahorror.fear=39..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 2 true
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.44
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-71","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-72","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.9 0.7 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-77","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-79","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 1.0 0.7 0.3 0.1 10
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.47
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.57
title @a[scores={novahorror.fear=52..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 0 true
particle minecraft:ash ~ ~1 ~ 0.8 0.7 0.0 0.1 10
effect give @a[distance=..10] minecraft:darkness 5 2 true
particle minecraft:ash ~ ~1 ~ 0.0 0.1 0.1 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-89","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.09
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-92","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-93","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-96","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-97","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.24
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.35
particle minecraft:ash ~ ~1 ~ 0.5 0.0 0.8 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-101","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-103","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.4 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.11
title @a[scores={novahorror.fear=20..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=65..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-112","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.42
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.67
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-118","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=38..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.3 0.6 0.1 10
particle minecraft:ash ~ ~1 ~ 0.3 0.2 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=77..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 1 true
effect give @a[distance=..10] minecraft:darkness 4 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-127","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.34
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-133","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 4 2 true
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.4 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.26
effect give @a[distance=..10] minecraft:darkness 2 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 124-139","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.11
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.06
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=27..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
