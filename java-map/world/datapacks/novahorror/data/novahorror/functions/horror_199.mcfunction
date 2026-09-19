# Horror function 199 - Ravenshollow
# Coordinated with mod and command blocks
effect give @a[distance=..10] minecraft:darkness 1 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 2 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.90
particle minecraft:ash ~ ~1 ~ 0.0 0.4 0.1 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.39
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-7","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=48..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.77
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-13","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.2 0.4 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=67..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.35
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-20","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 5 1 true
particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 0 true
title @a[scores={novahorror.fear=51..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 1 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-30","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-32","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-33","color":"gray","italic":true}
title @a[scores={novahorror.fear=22..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 4 2 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 1.34
title @a[scores={novahorror.fear=88..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.1 0.3 0.5 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.1 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-45","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-48","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-49","color":"gray","italic":true}
title @a[scores={novahorror.fear=42..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 1 1 true
effect give @a[distance=..10] minecraft:darkness 2 0 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.01
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-57","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-59","color":"gray","italic":true}
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=86..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-66","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.18
particle minecraft:ash ~ ~1 ~ 0.8 0.1 0.3 0.1 10
title @a[scores={novahorror.fear=99..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-72","color":"gray","italic":true}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.85
particle minecraft:ash ~ ~1 ~ 0.9 0.6 0.7 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-76","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.7 0.3 0.1 10
title @a[scores={novahorror.fear=24..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-83","color":"gray","italic":true}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.71
title @a[scores={novahorror.fear=85..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.14
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-89","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=83..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=99..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.09
title @a[scores={novahorror.fear=42..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-97","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.33
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=27..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=20..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=81..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.49
scoreboard players add @a novahorror.fear 2
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.93
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-108","color":"gray","italic":true}
title @a[scores={novahorror.fear=78..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-111","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 2 2 true
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.58
title @a[scores={novahorror.fear=74..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-116","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.5 0.8 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-118","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-119","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.9 0.1 0.3 0.1 10
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=36..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 3 0 true
title @a[scores={novahorror.fear=90..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 1.0 0.1 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-126","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-127","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 1.0 0.9 0.6 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-130","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 4 1 true
effect give @a[distance=..10] minecraft:darkness 2 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-133","color":"gray","italic":true}
title @a[scores={novahorror.fear=95..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.64
effect give @a[distance=..10] minecraft:darkness 2 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-137","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 199-138","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.74
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.15
effect give @a[distance=..10] minecraft:darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.7 0.2 0.9 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.77
effect give @a[distance=..10] minecraft:darkness 5 0 true
title @a[scores={novahorror.fear=67..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=39..}] title {"text":"او اینجاست!","color":"dark_red"}
