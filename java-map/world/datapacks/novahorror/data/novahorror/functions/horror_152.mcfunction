# Horror function 152 - Ravenshollow
# Coordinated with mod and command blocks
effect give @a[distance=..10] minecraft:darkness 5 1 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.19
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-3","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.4 0.3 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.8 0.1 10
particle minecraft:ash ~ ~1 ~ 0.3 0.2 0.7 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-10","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.74
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-13","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=86..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.84
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.26
title @a[scores={novahorror.fear=63..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=34..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.01
title @a[scores={novahorror.fear=87..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.53
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.39
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.40
particle minecraft:ash ~ ~1 ~ 0.6 0.5 0.9 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-32","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-33","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=38..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.36
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 1 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.09
title @a[scores={novahorror.fear=62..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=47..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 3
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.46
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.6 0.1 10
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.1 0.5 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-53","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-55","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.6 0.3 0.1 10
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.1 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.42
particle minecraft:ash ~ ~1 ~ 0.6 0.1 0.3 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-61","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.1 0.7 0.8 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.8 0.8 0.1 10
particle minecraft:ash ~ ~1 ~ 0.1 0.9 0.6 0.1 10
title @a[scores={novahorror.fear=80..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=23..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=28..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.0 0.5 0.1 10
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 2 true
particle minecraft:ash ~ ~1 ~ 0.8 0.3 0.1 0.1 10
particle minecraft:ash ~ ~1 ~ 0.0 0.8 0.1 0.1 10
title @a[scores={novahorror.fear=56..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.58
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 0 true
particle minecraft:ash ~ ~1 ~ 0.5 1.0 0.5 0.1 10
title @a[scores={novahorror.fear=78..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=31..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=34..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.76
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=49..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=23..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-97","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-101","color":"gray","italic":true}
title @a[scores={novahorror.fear=25..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.27
particle minecraft:ash ~ ~1 ~ 1.0 0.3 0.9 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.8 0.2 0.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-112","color":"gray","italic":true}
title @a[scores={novahorror.fear=94..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 152-116","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 0 true
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.63
effect give @a[distance=..10] minecraft:darkness 2 2 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.78
title @a[scores={novahorror.fear=43..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.48
particle minecraft:ash ~ ~1 ~ 0.1 0.2 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.49
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.25
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.53
effect give @a[distance=..10] minecraft:darkness 2 0 true
title @a[scores={novahorror.fear=69..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.43
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.37
particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.3 0.1 10
title @a[scores={novahorror.fear=30..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 1.0 0.6 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.18
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
