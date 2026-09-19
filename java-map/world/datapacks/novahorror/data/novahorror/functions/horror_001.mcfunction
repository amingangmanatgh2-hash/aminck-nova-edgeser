# Horror function 1 - Ravenshollow
# Coordinated with mod and command blocks
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.27
effect give @a[distance=..10] minecraft:darkness 3 1 true
title @a[scores={novahorror.fear=20..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.34
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.76
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-13","color":"gray","italic":true}
title @a[scores={novahorror.fear=32..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.8 0.5 0.4 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=68..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 0 true
title @a[scores={novahorror.fear=42..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-27","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.7 0.8 0.1 10
particle minecraft:ash ~ ~1 ~ 0.7 0.3 0.2 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 2 true
title @a[scores={novahorror.fear=34..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.9 0.1 10
title @a[scores={novahorror.fear=30..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=30..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.42
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-42","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-43","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.47
effect give @a[distance=..10] minecraft:darkness 5 0 true
effect give @a[distance=..10] minecraft:darkness 3 0 true
effect give @a[distance=..10] minecraft:darkness 5 2 true
scoreboard players add @a novahorror.fear 3
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.82
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.95
title @a[scores={novahorror.fear=40..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-57","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 1.0 0.8 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.32
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-62","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-64","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=39..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.5 1.0 0.1 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.3 1.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-71","color":"gray","italic":true}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.36
effect give @a[distance=..10] minecraft:darkness 4 1 true
particle minecraft:ash ~ ~1 ~ 0.4 0.3 0.3 0.1 10
effect give @a[distance=..10] minecraft:darkness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.7 0.8 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=52..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.29
title @a[scores={novahorror.fear=82..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-83","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=98..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 1.0 0.3 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.2 0.5 0.5 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.0 0.9 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.6 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-98","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.5 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.83
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 2 true
particle minecraft:ash ~ ~1 ~ 0.6 0.4 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 0 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.00
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=62..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-116","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 1 true
title @a[scores={novahorror.fear=30..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-119","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.3 0.3 0.4 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.75
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-124","color":"gray","italic":true}
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 1-126","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=65..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 2 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.10
title @a[scores={novahorror.fear=78..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.87
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.6 0.7 0.2 0.1 10
title @a[scores={novahorror.fear=63..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.2 0.8 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.9 1.0 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=86..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=65..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.6 0.7 0.6 0.1 10
title @a[scores={novahorror.fear=32..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 2 true
