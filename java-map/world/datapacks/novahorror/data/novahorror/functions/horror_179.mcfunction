# Horror function 179 - Ravenshollow
# Coordinated with mod and command blocks
particle minecraft:ash ~ ~1 ~ 1.0 0.5 0.5 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.68
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.0 0.8 0.8 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 1 true
title @a[scores={novahorror.fear=85..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.8 0.8 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.6 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.1 0.2 0.3 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.16
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 1.0 0.8 0.1 10
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=56..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-20","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.6 0.0 0.5 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=52..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=91..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.55
particle minecraft:ash ~ ~1 ~ 0.8 0.3 0.7 0.1 10
title @a[scores={novahorror.fear=86..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.1 0.1 10
scoreboard players add @a novahorror.fear 2
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.67
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 2 true
title @a[scores={novahorror.fear=44..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.13
particle minecraft:ash ~ ~1 ~ 1.0 0.5 0.6 0.1 10
effect give @a[distance=..10] minecraft:darkness 5 0 true
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-44","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-45","color":"gray","italic":true}
title @a[scores={novahorror.fear=83..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.91
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.76
title @a[scores={novahorror.fear=24..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.6 0.4 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.60
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.69
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.0 0.3 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=67..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 1.0 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-63","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.7 1.0 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.0 0.6 0.3 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
effect give @a[distance=..10] minecraft:darkness 2 1 true
title @a[scores={novahorror.fear=62..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-72","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.1 0.2 0.0 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.71
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.68
title @a[scores={novahorror.fear=89..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=88..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-82","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.3 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 2 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.44
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-91","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.40
particle minecraft:ash ~ ~1 ~ 0.6 0.3 0.5 0.1 10
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=98..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.9 0.2 0.3 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=27..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.1 0.9 0.5 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-107","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-110","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.1 0.9 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-114","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 2 true
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 2 true
effect give @a[distance=..10] minecraft:darkness 1 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-123","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 2 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.38
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-126","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-127","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-128","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.97
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.93
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.8 0.3 0.7 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-133","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-134","color":"gray","italic":true}
title @a[scores={novahorror.fear=87..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=50..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.0 0.0 0.9 0.1 10
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.27
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-142","color":"gray","italic":true}
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 179-144","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 1 true
scoreboard players add @a novahorror.fear 2
