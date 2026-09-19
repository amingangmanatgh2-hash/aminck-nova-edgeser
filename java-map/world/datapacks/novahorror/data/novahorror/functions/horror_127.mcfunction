# Horror function 127 - Ravenshollow
# Coordinated with mod and command blocks
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.44
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-1","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-2","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.32
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-5","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-6","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 1 true
effect give @a[distance=..10] minecraft:darkness 2 0 true
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.41
particle minecraft:ash ~ ~1 ~ 0.8 0.4 0.1 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 1.0 0.9 0.5 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.37
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.77
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.4 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=43..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.2 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 2 true
particle minecraft:ash ~ ~1 ~ 0.9 0.1 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.4 0.2 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.9 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 2 true
title @a[scores={novahorror.fear=59..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.67
effect give @a[distance=..10] minecraft:darkness 5 0 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.75
effect give @a[distance=..10] minecraft:darkness 1 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.6 0.2 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.5 0.2 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 1 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-56","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.04
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.80
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-61","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-62","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=43..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.4 0.8 0.7 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.31
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=63..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.5 0.9 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.25
particle minecraft:ash ~ ~1 ~ 0.0 0.6 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=71..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 1 true
particle minecraft:ash ~ ~1 ~ 0.5 0.3 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 1 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.45
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.58
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.4 0.1 10
title @a[scores={novahorror.fear=100..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 2 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.15
title @a[scores={novahorror.fear=29..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.8 0.2 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.5 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.9 0.5 0.8 0.1 10
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.1 0.4 0.1 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.00
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-103","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=31..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-109","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-111","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-113","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.8 0.3 0.9 0.1 10
title @a[scores={novahorror.fear=54..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.9 0.7 0.9 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.04
particle minecraft:ash ~ ~1 ~ 0.5 0.8 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-122","color":"gray","italic":true}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.78
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.8 0.6 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-131","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.5 0.1 0.8 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 1 true
title @a[scores={novahorror.fear=92..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 1.0 0.4 0.3 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 127-138","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.39
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=47..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.9 0.0 0.0 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.8 0.0 0.0 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.59
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.12
effect give @a[distance=..10] minecraft:darkness 2 2 true
effect give @a[distance=..10] minecraft:darkness 3 1 true
