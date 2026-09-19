# Horror function 146 - Ravenshollow
# Coordinated with mod and command blocks
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.8 0.1 10
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 1 1 true
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 1.0 0.4 0.8 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 1 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.21
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-9","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=93..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.4 0.3 1.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-14","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-17","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 1.0 0.1 0.9 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-19","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-20","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-21","color":"gray","italic":true}
title @a[scores={novahorror.fear=57..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-23","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-24","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-26","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.96
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-29","color":"gray","italic":true}
title @a[scores={novahorror.fear=77..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-32","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.0 0.5 0.3 0.1 10
particle minecraft:ash ~ ~1 ~ 0.2 0.3 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=68..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.73
particle minecraft:ash ~ ~1 ~ 0.6 0.8 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-41","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.98
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-45","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.42
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.65
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.06
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.99
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-51","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.2 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=32..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=52..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=31..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-59","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.3 0.1 10
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-63","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.80
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.25
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-66","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.1 0.9 0.5 0.1 10
title @a[scores={novahorror.fear=52..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 0 true
effect give @a[distance=..10] minecraft:darkness 5 2 true
title @a[scores={novahorror.fear=92..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
title @a[scores={novahorror.fear=96..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.9 0.2 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-79","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.44
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.73
particle minecraft:ash ~ ~1 ~ 0.6 1.0 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=56..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 1 true
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.29
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-99","color":"gray","italic":true}
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.3 0.8 0.3 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.20
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=37..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-107","color":"gray","italic":true}
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 5 2 true
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-112","color":"gray","italic":true}
title @a[scores={novahorror.fear=31..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.86
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.61
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.0 0.1 0.9 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-126","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.01
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-131","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.9 0.2 0.1 10
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=25..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.36
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 146-143","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.51
title @a[scores={novahorror.fear=39..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.67
