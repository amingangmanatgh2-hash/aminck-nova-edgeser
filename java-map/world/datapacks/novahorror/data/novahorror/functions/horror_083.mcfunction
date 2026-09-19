# Horror function 83 - Ravenshollow
# Coordinated with mod and command blocks
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-0","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-2","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.8 0.3 0.4 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.3 0.2 0.5 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 0 true
title @a[scores={novahorror.fear=60..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.6 0.8 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=51..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.74
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.3 0.1 0.0 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-21","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.2 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.84
effect give @a[distance=..10] minecraft:darkness 3 0 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.71
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-33","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=71..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.95
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.5 0.8 0.4 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.38
title @a[scores={novahorror.fear=54..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-49","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=88..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=81..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.61
title @a[scores={novahorror.fear=42..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=97..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=58..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.99
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=91..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 0 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.94
title @a[scores={novahorror.fear=88..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-71","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.8 0.1 10
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.7 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.1 0.8 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.0 0.1 0.7 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-81","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-82","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-83","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.74
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.45
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-88","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 0 true
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=75..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.1 0.7 0.1 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-98","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.3 0.9 0.9 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.77
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-106","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.44
title @a[scores={novahorror.fear=42..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.46
title @a[scores={novahorror.fear=84..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.80
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.04
particle minecraft:ash ~ ~1 ~ 0.5 0.2 0.5 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=41..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.4 0.3 0.1 10
title @a[scores={novahorror.fear=27..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.6 0.5 0.3 0.1 10
effect give @a[distance=..10] minecraft:darkness 1 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.8 1.0 0.1 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-129","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.75
title @a[scores={novahorror.fear=84..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-134","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=46..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.1 0.8 0.0 0.1 10
particle minecraft:ash ~ ~1 ~ 0.6 0.7 0.8 0.1 10
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 83-145","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=69..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.54
title @a[scores={novahorror.fear=80..}] title {"text":"او اینجاست!","color":"dark_red"}
