# Horror function 195 - Ravenshollow
# Coordinated with mod and command blocks
effect give @a[distance=..10] minecraft:darkness 5 2 true
effect give @a[distance=..10] minecraft:darkness 2 2 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.44
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.42
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-5","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.95
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-8","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.5 0.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-10","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.4 0.5 0.2 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.36
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 2 true
effect give @a[distance=..10] minecraft:darkness 2 2 true
title @a[scores={novahorror.fear=100..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 1.0 0.3 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-19","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.85
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-21","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.79
particle minecraft:ash ~ ~1 ~ 1.0 1.0 0.2 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.33
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 1.0 0.6 1.0 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-29","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.39
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-32","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.46
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.29
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=87..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.9 0.5 1.0 0.1 10
effect give @a[distance=..10] minecraft:darkness 5 2 true
title @a[scores={novahorror.fear=20..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-43","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=35..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.6 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.20
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.68
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-53","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.47
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 0 true
effect give @a[distance=..10] minecraft:darkness 3 2 true
particle minecraft:ash ~ ~1 ~ 0.7 0.1 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.0 0.3 0.0 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.66
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.89
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.51
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.6 0.1 10
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-69","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-72","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-74","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-75","color":"gray","italic":true}
title @a[scores={novahorror.fear=66..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.6 0.2 0.1 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-78","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=31..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-82","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-83","color":"gray","italic":true}
title @a[scores={novahorror.fear=35..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.8 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 0 true
effect give @a[distance=..10] minecraft:darkness 1 1 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.40
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=59..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.91
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.74
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-98","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=100..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.6 0.3 0.7 0.1 10
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=58..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 1 true
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=93..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 1 true
effect give @a[distance=..10] minecraft:darkness 4 1 true
particle minecraft:ash ~ ~1 ~ 0.6 0.9 0.2 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.1 0.5 0.3 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 2 true
title @a[scores={novahorror.fear=86..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.2 0.5 1.0 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.93
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-130","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-131","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.8 0.1 10
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=21..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-139","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.7 0.7 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-141","color":"gray","italic":true}
title @a[scores={novahorror.fear=77..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=84..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 195-147","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.9 0.1 0.1 10
