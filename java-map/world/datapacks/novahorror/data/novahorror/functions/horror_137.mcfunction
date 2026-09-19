# Horror function 137 - Ravenshollow
# Coordinated with mod and command blocks
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.62
particle minecraft:ash ~ ~1 ~ 0.4 0.8 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=93..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.8 0.5 0.9 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-7","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.97
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-9","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-11","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 1 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-14","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.7 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.16
particle minecraft:ash ~ ~1 ~ 1.0 0.5 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.31
particle minecraft:ash ~ ~1 ~ 0.6 0.2 1.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-23","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.0 0.3 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-26","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-27","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.91
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-30","color":"gray","italic":true}
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.45
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-37","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.8 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=79..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-41","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.43
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.38
effect give @a[distance=..10] minecraft:darkness 5 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-46","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-47","color":"gray","italic":true}
title @a[scores={novahorror.fear=46..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-50","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 2 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.54
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.28
title @a[scores={novahorror.fear=38..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=43..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.65
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.4 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.9 0.6 0.1 10
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.03
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.8 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 2 true
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 1 true
effect give @a[distance=..10] minecraft:darkness 2 2 true
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.1 0.2 0.8 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 1 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.40
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=100..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-84","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-86","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.7 0.5 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=62..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.3 0.5 0.1 10
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.93
particle minecraft:ash ~ ~1 ~ 0.5 0.3 1.0 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.4 0.5 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-96","color":"gray","italic":true}
title @a[scores={novahorror.fear=39..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.7 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.6 0.0 0.1 0.1 10
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.51
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-110","color":"gray","italic":true}
title @a[scores={novahorror.fear=79..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=87..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.32
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=53..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=54..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-119","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 0 true
effect give @a[distance=..10] minecraft:darkness 4 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-123","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-124","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-125","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-127","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-130","color":"gray","italic":true}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.68
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 1 true
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.6 0.9 0.1 0.1 10
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.01
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.13
effect give @a[distance=..10] minecraft:darkness 5 0 true
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 137-147","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=83..}] title {"text":"او اینجاست!","color":"dark_red"}
