# Horror function 10 - Ravenshollow
# Coordinated with mod and command blocks
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.52
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.51
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-2","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-3","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-4","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=29..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 2 true
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 2 true
scoreboard players add @a novahorror.fear 3
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.74
effect give @a[distance=..10] minecraft:darkness 1 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-13","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-14","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.89
particle minecraft:ash ~ ~1 ~ 0.7 0.6 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.6 0.5 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.9 0.1 10
title @a[scores={novahorror.fear=82..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.48
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.6 0.8 0.8 0.1 10
title @a[scores={novahorror.fear=23..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-24","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 2 true
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.9 0.9 0.8 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.3 0.1 0.2 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 1 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.39
title @a[scores={novahorror.fear=85..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 1 true
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.12
effect give @a[distance=..10] minecraft:darkness 4 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-48","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.3 0.4 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.83
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-51","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-53","color":"gray","italic":true}
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-59","color":"gray","italic":true}
title @a[scores={novahorror.fear=51..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=55..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=82..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 4 1 true
particle minecraft:ash ~ ~1 ~ 0.4 0.7 1.0 0.1 10
title @a[scores={novahorror.fear=99..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-70","color":"gray","italic":true}
title @a[scores={novahorror.fear=60..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=97..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.22
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.68
title @a[scores={novahorror.fear=25..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-81","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.1 0.4 0.5 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-87","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 2 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.74
particle minecraft:ash ~ ~1 ~ 0.2 0.0 0.1 0.1 10
title @a[scores={novahorror.fear=23..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=71..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-95","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 2 true
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=81..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 1 true
particle minecraft:ash ~ ~1 ~ 0.4 0.3 1.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-108","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.8 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-110","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-111","color":"gray","italic":true}
title @a[scores={novahorror.fear=33..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=79..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.19
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-117","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-118","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.0 0.2 0.2 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-122","color":"gray","italic":true}
title @a[scores={novahorror.fear=74..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-125","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=38..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=80..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.04
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.88
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.1 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.39
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.18
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-139","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.5 0.9 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-141","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.9 0.9 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-143","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-144","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 10-146","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.23
title @a[scores={novahorror.fear=35..}] title {"text":"او اینجاست!","color":"dark_red"}
