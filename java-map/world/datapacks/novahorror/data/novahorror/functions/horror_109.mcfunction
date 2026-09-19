# Horror function 109 - Ravenshollow
# Coordinated with mod and command blocks
effect give @a[distance=..10] minecraft:darkness 4 2 true
scoreboard players add @a novahorror.fear 3
particle minecraft:ash ~ ~1 ~ 0.5 0.2 0.2 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 2 true
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-6","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-7","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-9","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-11","color":"gray","italic":true}
title @a[scores={novahorror.fear=83..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=37..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.9 0.8 0.7 0.1 10
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.03
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=74..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=59..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 2 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.74
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-24","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-27","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 0 true
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.34
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-35","color":"gray","italic":true}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.13
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 2 2 true
particle minecraft:ash ~ ~1 ~ 0.9 0.0 0.8 0.1 10
title @a[scores={novahorror.fear=85..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 5 1 true
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.18
title @a[scores={novahorror.fear=45..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.38
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-50","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-51","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-52","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=38..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.89
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.7 0.0 0.1 10
effect give @a[distance=..10] minecraft:darkness 5 1 true
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.36
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.9 0.3 0.8 0.1 10
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.03
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.3 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-66","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-69","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=40..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.3 1.0 0.1 10
title @a[scores={novahorror.fear=39..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=28..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.4 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.8 0.3 0.7 0.1 10
particle minecraft:ash ~ ~1 ~ 0.2 0.5 0.0 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=89..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 0.60
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-91","color":"gray","italic":true}
title @a[scores={novahorror.fear=24..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 4 1 true
effect give @a[distance=..10] minecraft:darkness 1 2 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-95","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 2 0 true
scoreboard players add @a novahorror.fear 3
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=83..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-102","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.6 0.3 0.9 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.25
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.84
title @a[scores={novahorror.fear=70..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.83
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 1.43
effect give @a[distance=..10] minecraft:darkness 2 1 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=88..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=31..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.0 0.9 0.7 0.1 10
title @a[scores={novahorror.fear=71..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
title @a[scores={novahorror.fear=58..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=51..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=92..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=60..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.9 0.0 0.9 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.2 0.9 0.1 10
effect give @a[distance=..10] minecraft:darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.3 0.4 0.9 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.93
title @a[scores={novahorror.fear=90..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.5 0.4 0.9 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 109-139","color":"gray","italic":true}
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.95
title @a[scores={novahorror.fear=30..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.6 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.8 0.3 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.13
particle minecraft:ash ~ ~1 ~ 0.7 0.6 0.0 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=36..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
