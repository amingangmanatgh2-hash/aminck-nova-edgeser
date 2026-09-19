# Horror 067 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=45..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:hunger 4 0 true
effect give @a[scores={novahorror.fear=56..}] minecraft:wither 7 2 true
particle minecraft:smoke ~ ~4 ~ 0.7 0.9 0.4 0.01 11
particle minecraft:sculk_soul ~ ~10 ~ 5 1 2 0.01 20
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.66
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.9 0.80
tellraw @a[scores={novahorror.fear=77..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..7] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~8 ~25 ~8 {CustomName:'"§8Crow 67-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~4 ~19 ~-7 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 67-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.96
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=70..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
# End horror 067
