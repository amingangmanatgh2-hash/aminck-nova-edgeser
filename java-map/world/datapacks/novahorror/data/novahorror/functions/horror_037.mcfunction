# Horror function 37 - Ravenshollow
# Coordinated with mod and command blocks
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 1 true
title @a[scores={novahorror.fear=96..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-3","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=52..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.26
effect give @a[distance=..10] minecraft:darkness 3 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-9","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.4 0.6 0.1 10
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.3 0.4 0.8 0.1 10
effect give @a[distance=..10] minecraft:darkness 5 0 true
effect give @a[distance=..10] minecraft:darkness 5 1 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.60
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.00
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 0 true
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-22","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 0 true
effect give @a[distance=..10] minecraft:darkness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.9 0.5 0.7 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.40
effect give @a[distance=..10] minecraft:darkness 1 0 true
effect give @a[distance=..10] minecraft:darkness 1 2 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-32","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.7 0.9 0.9 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-37","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=21..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 1 true
title @a[scores={novahorror.fear=58..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.2 0.3 0.0 0.1 10
title @a[scores={novahorror.fear=56..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=71..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.88
particle minecraft:ash ~ ~1 ~ 0.2 0.6 0.8 0.1 10
title @a[scores={novahorror.fear=65..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.6 0.3 0.6 0.1 10
effect give @a[distance=..10] minecraft:darkness 5 2 true
particle minecraft:ash ~ ~1 ~ 0.6 0.6 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 1 true
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-60","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.6 0.0 0.3 0.1 10
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=91..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.77
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.2 0.9 0.0 0.1 10
title @a[scores={novahorror.fear=99..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-69","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.2 0.5 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=60..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.33
title @a[scores={novahorror.fear=82..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-76","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=94..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 0 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.75
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.31
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 0 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.91
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-95","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 0 true
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 0 true
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 1.0 0.8 0.6 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 0 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.78
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-109","color":"gray","italic":true}
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 37-112","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 2 true
particle minecraft:ash ~ ~1 ~ 0.7 0.6 0.4 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.1 0.0 0.5 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.1 1.0 0.4 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.89
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.76
effect give @a[distance=..10] minecraft:darkness 2 0 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.52
effect give @a[distance=..10] minecraft:darkness 2 2 true
effect give @a[distance=..10] minecraft:darkness 5 2 true
effect give @a[distance=..10] minecraft:darkness 4 2 true
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.76
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 4 0 true
effect give @a[distance=..10] minecraft:darkness 2 2 true
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=82..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.4 0.5 1.0 0.1 10
title @a[scores={novahorror.fear=21..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.67
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.46
title @a[scores={novahorror.fear=63..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 1 true
