# Horror 082 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=45..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:wither 5 1 true
effect give @a[scores={novahorror.fear=69..}] minecraft:slowness 3 0 true
particle minecraft:spore_blossom_air ~ ~3 ~ 0.2 0.4 0.8 0.04 19
particle minecraft:smoke ~ ~10 ~ 4 1 2 0.01 11
playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 1.1 0.56
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.9 0.42
tellraw @a[scores={novahorror.fear=82..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..12] subtitle {"text":"§7چرا تنها شدم؟","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~20 ~25 ~12 {CustomName:'"§8Crow 82-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~8 ~21 ~3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 82-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.59
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=81..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.62
summon minecraft:parrot ~-3 ~9 ~-1 {CustomName:'"§8Raven 82-21"',NoGravity:0b,Tags:["raven_82"]}
title @a[scores={novahorror.fear=83..}] actionbar {"text":"§7...صدای کلاغ از ماه...","color":"dark_red"}
# End horror 082 enhanced 25 diverse
