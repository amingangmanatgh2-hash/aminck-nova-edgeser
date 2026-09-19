# Horror function 70 - Ravenshollow
# Coordinated with mod and command blocks
effect give @a[distance=..10] minecraft:darkness 5 1 true
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=57..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 2 true
particle minecraft:ash ~ ~1 ~ 0.8 0.2 0.2 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.12
effect give @a[distance=..10] minecraft:darkness 4 1 true
particle minecraft:ash ~ ~1 ~ 0.4 0.6 0.9 0.1 10
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.2 0.9 0.7 0.1 10
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=91..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=27..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-19","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-20","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.9 0.3 0.1 10
particle minecraft:ash ~ ~1 ~ 0.2 0.5 0.1 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 1 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.49
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=96..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=81..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-29","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-30","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.1 0.7 0.8 0.1 10
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.66
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.00
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-39","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-40","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.59
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=55..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.70
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-46","color":"gray","italic":true}
title @a[scores={novahorror.fear=37..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-48","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 1 0 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.45
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.61
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.3 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-56","color":"gray","italic":true}
title @a[scores={novahorror.fear=34..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 0 true
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-60","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-61","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.3 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.94
effect give @a[distance=..10] minecraft:darkness 4 2 true
particle minecraft:ash ~ ~1 ~ 0.1 0.8 0.9 0.1 10
particle minecraft:ash ~ ~1 ~ 0.5 0.9 0.0 0.1 10
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 5 0 true
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=51..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 2 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.30
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.92
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.64
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.4 0.8 0.1 10
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.9 0.5 0.4 0.1 10
title @a[scores={novahorror.fear=96..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=60..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 1 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.15
particle minecraft:ash ~ ~1 ~ 0.2 0.8 0.2 0.1 10
particle minecraft:ash ~ ~1 ~ 1.0 0.4 0.0 0.1 10
title @a[scores={novahorror.fear=28..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.6 0.2 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.7 0.9 0.8 0.1 10
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 1 0 true
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-104","color":"gray","italic":true}
title @a[scores={novahorror.fear=21..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-109","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.0 1.0 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-117","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 70-118","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.80
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.45
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.2 0.1 0.3 0.1 10
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=87..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.95
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=94..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.4 0.0 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.7 0.5 0.6 0.1 10
particle minecraft:ash ~ ~1 ~ 0.6 0.7 0.5 0.1 10
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=81..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=42..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=67..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.8 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.9 0.2 0.1 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
particle minecraft:ash ~ ~1 ~ 0.2 0.7 0.6 0.1 10
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=58..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.91
