# Horror function 27 - Ravenshollow
# Coordinated with mod and command blocks
effect give @a[distance=..10] minecraft:darkness 1 1 true
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.7 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-2","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.56
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-4","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 0 true
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.4 0.8 0.2 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.25
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.36
effect give @a[distance=..10] minecraft:darkness 5 1 true
title @a[scores={novahorror.fear=96..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 1 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.75
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-22","color":"gray","italic":true}
title @a[scores={novahorror.fear=57..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=87..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 0 true
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.9 0.2 0.2 0.1 10
title @a[scores={novahorror.fear=38..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-33","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-39","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.77
particle minecraft:ash ~ ~1 ~ 0.2 1.0 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.6 0.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-44","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.52
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-47","color":"gray","italic":true}
title @a[scores={novahorror.fear=91..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 1 true
title @a[scores={novahorror.fear=52..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.45
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.43
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=93..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=44..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.9 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-61","color":"gray","italic":true}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.02
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.22
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-64","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 2 true
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.3 0.2 0.1 10
particle minecraft:ash ~ ~1 ~ 0.4 0.5 0.4 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=63..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.76
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.2 0.8 0.7 0.1 10
title @a[scores={novahorror.fear=28..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=25..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.96
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.53
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.15
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.57
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 1 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.50
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.27
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 1 true
title @a[scores={novahorror.fear=42..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-97","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.7 0.3 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.17
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.5 0.4 0.6 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.45
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=84..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.1 0.2 0.9 0.1 10
title @a[scores={novahorror.fear=27..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.1 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.1 0.1 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 2 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.91
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.6 0.9 0.2 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 2 true
title @a[scores={novahorror.fear=84..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=100..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.9 0.5 0.1 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.01
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=71..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=60..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 2 true
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.54
particle minecraft:ash ~ ~1 ~ 0.6 0.0 0.5 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-135","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.7 0.9 0.8 0.1 10
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.2 0.0 0.3 0.1 10
title @a[scores={novahorror.fear=98..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=91..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.62
effect give @a[distance=..10] minecraft:darkness 1 2 true
effect give @a[distance=..10] minecraft:darkness 5 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 27-149","color":"gray","italic":true}
