# Horror function 81 - Ravenshollow
# Coordinated with mod and command blocks
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.66
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.7 0.8 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.81
particle minecraft:ash ~ ~1 ~ 0.6 0.9 0.7 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.17
effect give @a[distance=..10] minecraft:darkness 2 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-13","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.40
effect give @a[distance=..10] minecraft:darkness 1 1 true
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=67..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 1 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.51
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 1 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-28","color":"gray","italic":true}
title @a[scores={novahorror.fear=30..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.31
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-31","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 0 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.32
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-34","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 2 true
effect give @a[distance=..10] minecraft:darkness 3 2 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.73
effect give @a[distance=..10] minecraft:darkness 5 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.0 0.9 0.2 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.3 0.5 1.0 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.97
title @a[scores={novahorror.fear=62..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-48","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.01
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-51","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.48
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 1 1 true
particle minecraft:ash ~ ~1 ~ 0.8 0.8 0.9 0.1 10
title @a[scores={novahorror.fear=72..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-58","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.1 0.2 0.2 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 0 true
effect give @a[distance=..10] minecraft:darkness 5 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.47
particle minecraft:ash ~ ~1 ~ 0.3 0.4 0.0 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.33
title @a[scores={novahorror.fear=53..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-71","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-72","color":"gray","italic":true}
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.8 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 0 true
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.85
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-81","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-82","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.8 0.1 0.1 10
particle minecraft:ash ~ ~1 ~ 0.6 0.6 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=82..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 2 true
effect give @a[distance=..10] minecraft:darkness 3 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=79..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.18
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=88..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-97","color":"gray","italic":true}
title @a[scores={novahorror.fear=81..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 0 true
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 0 true
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.1 0.4 0.9 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=69..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.32
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-113","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-115","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-116","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-117","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.5 0.6 0.1 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=66..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.32
particle minecraft:ash ~ ~1 ~ 0.8 0.4 0.4 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-126","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 4 0 true
particle minecraft:ash ~ ~1 ~ 0.1 0.1 0.8 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.22
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-131","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.21
effect give @a[distance=..10] minecraft:darkness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.9 0.1 10
title @a[scores={novahorror.fear=37..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=82..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.52
particle minecraft:ash ~ ~1 ~ 0.1 0.2 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 1 true
particle minecraft:ash ~ ~1 ~ 0.8 0.9 0.1 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-143","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 81-144","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.9 0.2 0.1 0.1 10
title @a[scores={novahorror.fear=66..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.8 0.3 0.3 0.1 10
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
