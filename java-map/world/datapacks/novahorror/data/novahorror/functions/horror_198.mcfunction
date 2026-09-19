# Horror function 198 - Ravenshollow
# Coordinated with mod and command blocks
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.36
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-3","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.9 0.5 0.3 0.1 10
title @a[scores={novahorror.fear=55..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-10","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 1.0 0.9 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.58
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=80..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 1 true
effect give @a[distance=..10] minecraft:darkness 3 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-18","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.9 0.7 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.0 0.6 0.3 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-23","color":"gray","italic":true}
title @a[scores={novahorror.fear=21..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-28","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=97..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.53
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-35","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-38","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=93..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 0 true
title @a[scores={novahorror.fear=38..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 1.0 0.7 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-48","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.3 0.2 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 2 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.05
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-56","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-57","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.7 0.9 0.6 0.1 10
particle minecraft:ash ~ ~1 ~ 0.2 0.0 0.8 0.1 10
title @a[scores={novahorror.fear=23..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=91..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.52
effect give @a[distance=..10] minecraft:darkness 1 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-69","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=82..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.55
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.77
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=90..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-82","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.88
title @a[scores={novahorror.fear=39..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.67
effect give @a[distance=..10] minecraft:darkness 3 1 true
particle minecraft:ash ~ ~1 ~ 0.4 0.3 0.6 0.1 10
title @a[scores={novahorror.fear=79..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.92
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-94","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.21
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.59
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=57..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.9 0.2 0.1 10
title @a[scores={novahorror.fear=32..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.6 0.1 10
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-106","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=46..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.8 0.4 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.64
title @a[scores={novahorror.fear=47..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.2 0.5 0.9 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 1 true
particle minecraft:ash ~ ~1 ~ 1.0 0.2 0.1 0.1 10
particle minecraft:ash ~ ~1 ~ 0.4 0.5 0.2 0.1 10
particle minecraft:ash ~ ~1 ~ 0.9 0.3 0.9 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.83
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.9 0.1 10
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.5 0.6 0.1 0.1 10
title @a[scores={novahorror.fear=40..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-136","color":"gray","italic":true}
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 1 true
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-142","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 2 2 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.16
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 198-147","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.1 0.1 0.1 10
particle minecraft:ash ~ ~1 ~ 0.3 0.9 0.7 0.1 10
