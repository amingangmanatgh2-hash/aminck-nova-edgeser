# Horror function 79 - Ravenshollow
# Coordinated with mod and command blocks
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-1","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-2","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.8 0.2 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.15
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 1.0 0.8 1.0 0.1 10
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.98
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.9 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-15","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 0 true
title @a[scores={novahorror.fear=52..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=90..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 1 true
particle minecraft:ash ~ ~1 ~ 0.3 0.1 1.0 0.1 10
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.3 1.0 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.89
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 1 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.45
effect give @a[distance=..10] minecraft:darkness 1 2 true
title @a[scores={novahorror.fear=68..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.6 0.1 10
particle minecraft:ash ~ ~1 ~ 0.1 0.4 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-37","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.03
effect give @a[distance=..10] minecraft:darkness 3 1 true
particle minecraft:ash ~ ~1 ~ 0.8 0.1 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-42","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.5 0.3 0.1 10
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.2 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.93
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.38
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-55","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.4 0.7 0.6 0.1 10
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.79
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 1 true
title @a[scores={novahorror.fear=72..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.14
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 3 1 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.05
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-72","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.23
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.3 0.9 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-80","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-81","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.2 0.1 10
title @a[scores={novahorror.fear=59..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-85","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.44
particle minecraft:ash ~ ~1 ~ 1.0 0.9 0.8 0.1 10
particle minecraft:ash ~ ~1 ~ 0.9 0.5 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.5 0.7 0.1 10
title @a[scores={novahorror.fear=98..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=25..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.50
effect give @a[distance=..10] minecraft:darkness 4 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-99","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=77..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=46..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-106","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-107","color":"gray","italic":true}
title @a[scores={novahorror.fear=100..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
effect give @a[distance=..10] minecraft:darkness 3 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-111","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 1 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.52
particle minecraft:ash ~ ~1 ~ 0.2 0.5 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.9 0.3 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 2 true
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.32
particle minecraft:ash ~ ~1 ~ 0.7 0.4 0.3 0.1 10
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.7 0.4 0.8 0.1 10
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.1 1.0 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-128","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 2 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.08
title @a[scores={novahorror.fear=57..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.6 0.1 10
particle minecraft:ash ~ ~1 ~ 0.5 0.4 0.4 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 1 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.50
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=80..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 2 true
effect give @a[distance=..10] minecraft:darkness 5 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 79-146","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
