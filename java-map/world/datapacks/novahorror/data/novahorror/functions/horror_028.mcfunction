# Horror function 28 - Ravenshollow
# Coordinated with mod and command blocks
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-0","color":"gray","italic":true}
title @a[scores={novahorror.fear=99..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.66
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.16
effect give @a[distance=..10] minecraft:darkness 3 2 true
title @a[scores={novahorror.fear=75..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=47..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 0 true
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-14","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=78..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.55
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-19","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-21","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-23","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-25","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.59
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=98..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.80
effect give @a[distance=..10] minecraft:darkness 3 1 true
effect give @a[distance=..10] minecraft:darkness 3 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-38","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.35
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-40","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.8 0.4 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-48","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 0 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.61
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.32
title @a[scores={novahorror.fear=47..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-53","color":"gray","italic":true}
title @a[scores={novahorror.fear=30..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.2 0.1 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.82
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-61","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.9 0.7 0.2 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.28
particle minecraft:ash ~ ~1 ~ 0.5 0.9 1.0 0.1 10
particle minecraft:ash ~ ~1 ~ 1.0 0.7 0.7 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-67","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-75","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=96..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.0 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.92
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-87","color":"gray","italic":true}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.33
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.4 0.9 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.78
effect give @a[distance=..10] minecraft:darkness 1 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.3 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.6 0.2 0.1 10
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-106","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 3 0 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.37
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-112","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-114","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.2 0.3 0.6 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.31
particle minecraft:ash ~ ~1 ~ 0.4 0.3 0.3 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.88
particle minecraft:ash ~ ~1 ~ 0.3 0.3 0.5 0.1 10
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.40
effect give @a[distance=..10] minecraft:darkness 5 1 true
effect give @a[distance=..10] minecraft:darkness 5 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-129","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-133","color":"gray","italic":true}
title @a[scores={novahorror.fear=49..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-135","color":"gray","italic":true}
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=43..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 2 true
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.64
effect give @a[distance=..10] minecraft:darkness 3 2 true
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 28-147","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
