# Horror function 135 - Ravenshollow
# Coordinated with mod and command blocks
particle minecraft:ash ~ ~1 ~ 0.3 0.1 0.1 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.0 1.0 0.3 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 1 true
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-12","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.2 0.5 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.24
particle minecraft:ash ~ ~1 ~ 0.6 0.6 0.1 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 2 true
title @a[scores={novahorror.fear=28..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=77..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-22","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-24","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.1 0.1 0.2 0.1 10
title @a[scores={novahorror.fear=80..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 2 true
particle minecraft:ash ~ ~1 ~ 0.1 1.0 0.1 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.38
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.1 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 1 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.48
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.73
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-34","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-36","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 1 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-41","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.5 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.69
particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.4 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.46
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-46","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-47","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-50","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.88
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-52","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-54","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 1 true
title @a[scores={novahorror.fear=66..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.03
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-59","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-60","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-61","color":"gray","italic":true}
title @a[scores={novahorror.fear=39..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.9 0.4 0.1 10
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.67
title @a[scores={novahorror.fear=77..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.40
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 5 2 true
particle minecraft:ash ~ ~1 ~ 1.0 0.4 0.3 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.2 0.5 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.8 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-75","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 2 true
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.7 0.1 0.8 0.1 10
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 0 true
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.73
title @a[scores={novahorror.fear=67..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.9 0.1 0.5 0.1 10
effect give @a[distance=..10] minecraft:darkness 5 1 true
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=85..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.37
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-100","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.6 0.1 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.7 0.9 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.2 0.1 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-109","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.3 0.9 0.1 10
title @a[scores={novahorror.fear=23..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-114","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 2 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.22
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.78
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.00
particle minecraft:ash ~ ~1 ~ 0.4 0.2 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.4 0.9 0.9 0.1 10
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=83..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=62..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.70
title @a[scores={novahorror.fear=55..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-128","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 2 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.02
title @a[scores={novahorror.fear=74..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=21..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 2 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.17
title @a[scores={novahorror.fear=33..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-144","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 0 true
title @a[scores={novahorror.fear=47..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 135-147","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.1 0.5 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
