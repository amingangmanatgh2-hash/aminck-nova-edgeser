# Horror function 78 - Ravenshollow
# Coordinated with mod and command blocks
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 1 2 true
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.4 0.1 0.5 0.1 10
scoreboard players add @a novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 2 true
particle minecraft:ash ~ ~1 ~ 0.9 0.1 0.1 0.1 10
particle minecraft:ash ~ ~1 ~ 0.7 0.7 0.3 0.1 10
scoreboard players add @a novahorror.fear 3
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.12
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-11","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.8 0.1 0.3 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 1 true
effect give @a[distance=..10] minecraft:darkness 5 1 true
effect give @a[distance=..10] minecraft:darkness 1 1 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-17","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 1 2 true
effect give @a[distance=..10] minecraft:darkness 1 1 true
title @a[scores={novahorror.fear=46..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-21","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.5 0.8 0.1 10
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 3 2 true
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.69
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
title @a[scores={novahorror.fear=55..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 0 true
effect give @a[distance=..10] minecraft:darkness 4 2 true
title @a[scores={novahorror.fear=76..}] title {"text":"او اینجاست!","color":"dark_red"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=51..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 1
title @a[scores={novahorror.fear=47..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-36","color":"gray","italic":true}
effect give @a[distance=..10] minecraft:darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 4 2 true
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.1 0.7 0.4 0.1 10
particle minecraft:ash ~ ~1 ~ 0.8 0.2 0.7 0.1 10
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.08
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-44","color":"gray","italic":true}
scoreboard players add @a novahorror.fear 2
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-48","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
effect give @a[distance=..10] minecraft:darkness 3 2 true
title @a[scores={novahorror.fear=89..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-52","color":"gray","italic":true}
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1 0.65
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.7 0.6 0.5 0.1 10
effect give @a[distance=..10] minecraft:darkness 4 1 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
effect give @a[distance=..10] minecraft:darkness 1 2 true
effect give @a[distance=..10] minecraft:darkness 5 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.9 0.6 0.1 10
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.59
title @a[scores={novahorror.fear=90..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-65","color":"gray","italic":true}
title @a[scores={novahorror.fear=63..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.83
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.0 0.2 0.6 0.1 10
title @a[scores={novahorror.fear=43..}] title {"text":"او اینجاست!","color":"dark_red"}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.5 0.3 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=87..}] title {"text":"او اینجاست!","color":"dark_red"}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.28
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.49
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
title @a[scores={novahorror.fear=61..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 1.50
particle minecraft:ash ~ ~1 ~ 0.2 0.9 0.7 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
particle minecraft:ash ~ ~1 ~ 0.2 0.8 0.5 0.1 10
title @a[scores={novahorror.fear=24..}] title {"text":"او اینجاست!","color":"dark_red"}
title @a[scores={novahorror.fear=69..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.4 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.32
scoreboard players add @a novahorror.fear 2
effect give @a[distance=..10] minecraft:darkness 5 2 true
scoreboard players add @a novahorror.fear 2
title @a[scores={novahorror.fear=63..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
scoreboard players add @a novahorror.fear 3
effect give @a[distance=..10] minecraft:darkness 3 2 true
effect give @a[distance=..10] minecraft:darkness 3 1 true
scoreboard players add @a novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-101","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-104","color":"gray","italic":true}
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.39
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1 0.34
particle minecraft:ash ~ ~1 ~ 0.3 0.8 0.6 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.6 0.3 0.2 0.1 10
particle minecraft:ash ~ ~1 ~ 0.9 0.7 0.2 0.1 10
effect give @a[distance=..10] minecraft:darkness 3 1 true
scoreboard players add @a novahorror.fear 3
scoreboard players add @a novahorror.fear 1
scoreboard players add @a novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 1.21
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
scoreboard players add @a novahorror.fear 2
particle minecraft:ash ~ ~1 ~ 0.9 0.2 0.0 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 1 0.99
title @a[scores={novahorror.fear=78..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 5 1 true
particle minecraft:ash ~ ~1 ~ 0.9 0.3 0.6 0.1 10
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-127","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-128","color":"gray","italic":true}
title @a[scores={novahorror.fear=50..}] title {"text":"او اینجاست!","color":"dark_red"}
scoreboard players add @a novahorror.fear 3
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.3 0.6 0.1 0.1 10
title @a[scores={novahorror.fear=94..}] title {"text":"او اینجاست!","color":"dark_red"}
particle minecraft:ash ~ ~1 ~ 0.7 0.4 0.7 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.8 0.7 0.3 0.1 10
title @a[scores={novahorror.fear=57..}] title {"text":"او اینجاست!","color":"dark_red"}
effect give @a[distance=..10] minecraft:darkness 2 0 true
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-139","color":"gray","italic":true}
title @a[scores={novahorror.fear=78..}] title {"text":"او اینجاست!","color":"dark_red"}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-141","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-142","color":"gray","italic":true}
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-143","color":"gray","italic":true}
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1 1.35
tellraw @a[distance=..20] {"text":"...صدای کلاغ از ماه... 78-145","color":"gray","italic":true}
particle minecraft:ash ~ ~1 ~ 0.3 0.1 0.6 0.1 10
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
particle minecraft:ash ~ ~1 ~ 0.1 0.6 0.8 0.1 10
execute at @a run summon minecraft:bat ~ ~5 ~ {CustomName:'"§8Crow"',NoGravity:1b}
