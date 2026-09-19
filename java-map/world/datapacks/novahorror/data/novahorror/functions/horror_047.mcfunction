# Horror function 47 - Ravenshollow
# Coordinated with mod and command blocks
effect give @a[distance=..10] minecraft:darkness 3 1 true
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.0 0.6 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-5","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.7 0.3 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-7","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 5 1 true
effect give @a[distance=..10] minecraft:darkness 3 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-11","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.3 0.2 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=24..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=80..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.0 0.5 0.2 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-19","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 0 true
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=94..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.56
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-28","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-29","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-31","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=21..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.0 0.0 0.0 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 1 true
title @a[scores={novahorror.fear=56..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=69..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.8 0.6 0.6 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.00
effect give @a[distance=..10] minecraft:darkness 3 2 true
title @a[scores={novahorror.fear=65..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.81
title @a[scores={novahorror.fear=56..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-47","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.65
effect give @a[distance=..10] minecraft:darkness 3 1 true
effect give @a[distance=..10] minecraft:darkness 1 0 true
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=34..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.2 0.8 0.1 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-55","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.8 0.1 10
particle minecraft:ash ~ ~1 ~ 0.0 0.9 0.9 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.38
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 2 true
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 3 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-64","color":"gray","italic":true}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.82
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.50
particle minecraft:ash ~ ~1 ~ 0.1 0.9 0.8 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=82..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.1 10
particle minecraft:ash ~ ~1 ~ 0.2 0.4 0.6 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-85","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 3 0 true
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=30..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-97","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-100","color":"gray","italic":true}
title @a[scores={novahorror.fear=21..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.29
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-110","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.1 0.4 0.3 0.1 10
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 5 2 true
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.21
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.59
title @a[scores={novahorror.fear=69..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=96..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.24
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.59
effect give @a[distance=..10] minecraft:darkness 5 1 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.49
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-132","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.71
title @a[scores={novahorror.fear=90..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 2 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.63
particle minecraft:ash ~ ~1 ~ 0.2 0.3 0.5 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.38
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.9 0.5 0.9 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.48
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 2 true
title @a[scores={novahorror.fear=59..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 47-148","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.7 0.6 0.1 10
