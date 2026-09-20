# Horror 037 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=32..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:hunger 5 0 true
effect give @a[scores={novahorror.fear=40..}] minecraft:weakness 7 0 true
particle minecraft:smoke ~ ~5 ~ 1.0 0.7 0.1 0.09 20
particle minecraft:soul ~ ~10 ~ 3 1 2 0.01 23
playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.43
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.6 0.42
tellraw @a[scores={novahorror.fear=55..}] {"text":"§cقلبم تند میزنه...","color":"red"}
title @a[distance=..6] subtitle {"text":"§cکمک...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-12 ~24 ~-2 {CustomName:'"§8Crow 37-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~6 ~19 ~-12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 37-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.87
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=81..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.71
summon minecraft:parrot ~4 ~14 ~-12 {CustomName:'"§8Raven 37-21"',NoGravity:0b,Tags:["raven_37"]}
title @a[scores={novahorror.fear=81..}] actionbar {"text":"§4فرار کن!","color":"dark_red"}
# End horror 037 enhanced 25 diverse
