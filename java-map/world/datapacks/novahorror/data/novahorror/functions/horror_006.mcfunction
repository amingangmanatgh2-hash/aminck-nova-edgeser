# Horror function 6 - Ravenshollow
# Coordinated with mod and command blocks
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.53
effect give @a[distance=..10] minecraft:darkness 2 2 true
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.4 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.92
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.8 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.57
title @a[scores={novahorror.fear=62..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 1 true
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-13","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-14","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-19","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-20","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=57..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 1 true
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-30","color":"gray","italic":true}
title @a[scores={novahorror.fear=96..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-33","color":"gray","italic":true}
title @a[scores={novahorror.fear=35..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.5 0.4 0.2 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.72
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-39","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-40","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-42","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.3 0.0 0.7 0.1 10
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.53
title @a[scores={novahorror.fear=50..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.45
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 0 true
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.8 0.6 0.1 10
title @a[scores={novahorror.fear=53..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=83..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-63","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.1 0.1 10
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=54..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.39
effect give @a[distance=..10] minecraft:darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.7 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.21
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.74
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-80","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.43
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.35
title @a[scores={novahorror.fear=77..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-85","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.4 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-88","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-93","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-95","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-97","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 2 true
particle minecraft:ash ~ ~1 ~ 0.4 0.7 0.1 0.1 10
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-106","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.84
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-109","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=28..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.5 0.9 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.3 0.8 0.3 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-124","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.2 0.2 1.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-129","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-130","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 6-132","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 1 true
title @a[scores={novahorror.fear=86..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.0 0.6 0.8 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.32
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.1 0.5 0.9 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 2 true
particle minecraft:ash ~ ~1 ~ 1.0 0.7 0.0 0.1 10
particle minecraft:ash ~ ~1 ~ 0.7 0.4 0.5 0.1 10
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 0 true
title @a[scores={novahorror.fear=59..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
