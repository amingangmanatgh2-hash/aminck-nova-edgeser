# Horror 071 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=21..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:slowness 4 0 true
effect give @a[scores={novahorror.fear=76..}] minecraft:wither 3 1 true
particle minecraft:white_ash ~ ~4 ~ 1.0 0.3 0.9 0.07 8
particle minecraft:witch ~ ~10 ~ 2 1 2 0.01 14
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1.1 1.47
playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1.0 0.42
tellraw @a[scores={novahorror.fear=61..}] {"text":"§4خون...","color":"red"}
title @a[distance=..11] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~13 ~21 ~8 {CustomName:'"§8Crow 71-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-3 ~21 ~10 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 71-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.57
execute if predicate novahorror:is_raining run particle minecraft:soul ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.90
summon minecraft:parrot ~3 ~6 ~13 {CustomName:'"§8Raven 71-21"',NoGravity:0b,Tags:["raven_71"]}
title @a[scores={novahorror.fear=62..}] actionbar {"text":"§cنمی‌تونم نفس بکشم...","color":"dark_red"}
# End horror 071 enhanced 25 diverse
