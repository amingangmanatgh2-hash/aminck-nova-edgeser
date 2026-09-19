# Horror function 43 - Ravenshollow
# Coordinated with mod and command blocks
effect give @a[distance=..10] minecraft:darkness 4 1 true
effect give @a[distance=..10] minecraft:darkness 4 0 true
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-3","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-4","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 4 0 true
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 5 1 true
effect give @a[distance=..10] minecraft:darkness 3 0 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.94
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-16","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.3 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.3 0.9 0.8 0.1 10
title @a[scores={novahorror.fear=57..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.5 0.8 0.5 0.1 10
particle minecraft:ash ~ ~1 ~ 0.5 0.2 0.9 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 2 true
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.0 0.2 1.0 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 1 true
effect give @a[distance=..10] minecraft:darkness 1 0 true
particle minecraft:ash ~ ~1 ~ 0.7 0.9 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.6 0.9 0.4 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-32","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=64..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.74
effect give @a[distance=..10] minecraft:darkness 5 1 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.91
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.39
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.25
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-41","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.18
title @a[scores={novahorror.fear=56..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.9 0.3 0.4 0.1 10
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.14
title @a[scores={novahorror.fear=58..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 2 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.59
effect give @a[distance=..10] minecraft:darkness 5 2 true
title @a[scores={novahorror.fear=74..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.0 0.7 0.2 0.1 10
title @a[scores={novahorror.fear=73..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-56","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-58","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.8 0.7 0.3 0.1 10
particle minecraft:ash ~ ~1 ~ 0.7 0.5 0.0 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-65","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-66","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.6 0.2 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=49..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.38
effect give @a[distance=..10] minecraft:darkness 3 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 3 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-74","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-75","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 1 true
effect give @a[distance=..10] minecraft:darkness 5 1 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.62
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=26..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=85..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.5 0.0 0.9 0.1 10
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.5 0.0 0.8 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-90","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.43
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=35..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.67
title @a[scores={novahorror.fear=85..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 1.0 0.8 0.1 10
particle minecraft:ash ~ ~1 ~ 0.4 0.8 0.0 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 0 true
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=79..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.34
effect give @a[distance=..10] minecraft:darkness 1 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-109","color":"gray","italic":true}
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.7 0.1 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 0 true
effect give @a[distance=..10] minecraft:darkness 3 1 true
particle minecraft:ash ~ ~1 ~ 0.6 0.3 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.8 0.5 0.4 0.1 10
title @a[scores={novahorror.fear=93..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.95
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-129","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-132","color":"gray","italic":true}
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 1 true
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 3 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-137","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.1 0.5 0.1 10
particle minecraft:ash ~ ~1 ~ 0.6 0.4 0.7 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.49
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 5 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 43-146","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.11
scoreboard players add @a novahorror.fear 1
