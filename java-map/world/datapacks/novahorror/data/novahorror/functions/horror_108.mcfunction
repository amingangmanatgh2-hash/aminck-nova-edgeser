# Horror function 108 - Ravenshollow
# Coordinated with mod and command blocks
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-0","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.11
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-2","color":"gray","italic":true}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.40
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 0 true
effect give @a[distance=..10] minecraft:darkness 5 1 true
title @a[scores={novahorror.fear=43..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=44..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=50..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.69
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 4 2 true
title @a[scores={novahorror.fear=59..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 2 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.91
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=100..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 0 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.47
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.02
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=53..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=43..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.58
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-31","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-36","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.7 0.6 0.1 10
title @a[scores={novahorror.fear=85..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.5 0.1 0.9 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-42","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=94..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.00
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=69..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 1 true
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-51","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.12
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-55","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 2 true
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.21
title @a[scores={novahorror.fear=94..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.51
particle minecraft:ash ~ ~1 ~ 0.8 0.8 0.6 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.4 0.5 0.7 0.1 10
title @a[scores={novahorror.fear=51..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.34
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-70","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-71","color":"gray","italic":true}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.57
title @a[scores={novahorror.fear=40..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.02
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.6 0.2 0.1 10
title @a[scores={novahorror.fear=62..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.9 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.42
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-86","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=38..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.52
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.98
title @a[scores={novahorror.fear=88..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=86..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-99","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.45
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.45
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-109","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-112","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-113","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 0 true
effect give @a[distance=..10] minecraft:darkness 4 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-116","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-117","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-119","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-120","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=72..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 2 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.73
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-130","color":"gray","italic":true}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.40
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-138","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.4 0.8 1.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-140","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.4 0.2 0.5 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-142","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-143","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.4 0.0 0.1 10
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.52
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.82
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 108-149","color":"gray","italic":true}
