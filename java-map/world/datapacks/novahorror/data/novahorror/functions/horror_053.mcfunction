# Horror function 53 - Ravenshollow
# Coordinated with mod and command blocks
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=42..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.6 0.5 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.1 0.9 0.9 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.78
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-6","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=24..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.59
particle minecraft:ash ~ ~1 ~ 0.3 0.1 0.3 0.1 10
particle minecraft:ash ~ ~1 ~ 0.5 0.4 0.8 0.1 10
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 2 2 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.18
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 3 2 true
particle minecraft:ash ~ ~1 ~ 0.4 0.5 0.8 0.1 10
particle minecraft:ash ~ ~1 ~ 0.9 0.3 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=68..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.40
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 1 true
particle minecraft:ash ~ ~1 ~ 0.8 0.6 0.6 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-28","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.69
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-32","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.3 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-34","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-35","color":"gray","italic":true}
title @a[scores={novahorror.fear=71..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.49
particle minecraft:ash ~ ~1 ~ 0.8 0.8 0.8 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.32
particle minecraft:ash ~ ~1 ~ 0.2 0.9 0.6 0.1 10
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.7 0.4 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.7 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-45","color":"gray","italic":true}
title @a[scores={novahorror.fear=67..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.48
particle minecraft:ash ~ ~1 ~ 0.7 0.8 0.5 0.1 10
particle minecraft:ash ~ ~1 ~ 0.3 0.2 0.3 0.1 10
particle minecraft:ash ~ ~1 ~ 0.9 0.7 0.9 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.41
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-56","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=46..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=99..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.81
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.90
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-70","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.43
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=66..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.8 0.2 0.3 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 1 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.77
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-81","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 1 true
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.22
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=97..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.4 0.5 0.1 10
title @a[scores={novahorror.fear=59..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-90","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-92","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.9 0.1 0.2 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.96
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-97","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.9 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-99","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.67
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.41
title @a[scores={novahorror.fear=97..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-104","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.5 0.3 0.1 0.1 10
title @a[scores={novahorror.fear=94..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.4 0.6 0.9 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 1 true
effect give @a[distance=..10] minecraft:darkness 5 2 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.12
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-115","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.5 0.1 0.5 0.1 10
effect give @a[distance=..10] minecraft:darkness 5 1 true
title @a[scores={novahorror.fear=60..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.7 0.3 0.1 10
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-125","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-127","color":"gray","italic":true}
title @a[scores={novahorror.fear=31..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.0 0.8 0.9 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.4 0.9 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 1 true
title @a[scores={novahorror.fear=47..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.60
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-140","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 0 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.69
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-146","color":"gray","italic":true}
title @a[scores={novahorror.fear=91..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 53-148","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 1 true
