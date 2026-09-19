# Horror function 160 - Ravenshollow
# Coordinated with mod and command blocks
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.06
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 1 true
scoreboard players add @a novahorror.fear 2
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.29
title @a[scores={novahorror.fear=51..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.3 0.0 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-12","color":"gray","italic":true}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.46
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.16
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-16","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=87..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 1 true
particle minecraft:ash ~ ~1 ~ 0.3 0.9 1.0 0.1 10
title @a[scores={novahorror.fear=65..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.98
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-24","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.97
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.6 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.12
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-29","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=44..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 2 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.61
particle minecraft:ash ~ ~1 ~ 0.9 0.2 0.3 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.46
effect give @a[distance=..10] minecraft:darkness 2 0 true
effect give @a[distance=..10] minecraft:darkness 4 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.36
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.32
title @a[scores={novahorror.fear=23..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-46","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 1 true
title @a[scores={novahorror.fear=28..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-51","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.3 0.8 0.1 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.98
title @a[scores={novahorror.fear=32..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-55","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 2 true
title @a[scores={novahorror.fear=37..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.2 0.8 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=79..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-63","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 10
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.4 0.1 10
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.7 1.0 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.9 0.5 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.07
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-73","color":"gray","italic":true}
title @a[scores={novahorror.fear=35..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-75","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.9 0.9 0.1 10
title @a[scores={novahorror.fear=67..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.98
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-81","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.48
title @a[scores={novahorror.fear=42..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-85","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-86","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 1 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.72
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-89","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-90","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 2 true
effect give @a[distance=..10] minecraft:darkness 5 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-93","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.14
effect give @a[distance=..10] minecraft:darkness 5 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-98","color":"gray","italic":true}
title @a[scores={novahorror.fear=39..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=93..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.4 0.3 0.7 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.43
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.32
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=85..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 1 true
particle minecraft:ash ~ ~1 ~ 0.1 0.9 0.4 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-116","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 0 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.44
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-119","color":"gray","italic":true}
title @a[scores={novahorror.fear=91..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=28..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.8 0.6 0.6 0.1 10
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-128","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 2 0 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.33
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.35
particle minecraft:ash ~ ~1 ~ 0.4 0.6 1.0 0.1 10
particle minecraft:ash ~ ~1 ~ 0.1 0.3 0.3 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.36
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.1 0.8 0.2 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 0 true
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=36..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 1 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.32
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 160-147","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.2 0.5 0.9 0.1 10
scoreboard players add @a novahorror.fear 1
