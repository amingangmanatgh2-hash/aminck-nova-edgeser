# Horror 029 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=27..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:nausea 6 0 true
effect give @a[scores={novahorror.fear=67..}] minecraft:mining_fatigue 6 2 true
particle minecraft:campfire_cosy_smoke ~ ~5 ~ 0.1 0.3 0.7 0.09 10
particle minecraft:white_ash ~ ~10 ~ 2 1 5 0.01 30
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.57
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.8 0.91
tellraw @a[scores={novahorror.fear=80..}] {"text":"§cقلبم تند میزنه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-9 ~18 ~-19 {CustomName:'"§8Crow 29-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-1 ~23 ~-2 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 29-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.61
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=88..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 1 0.6
# End horror 029
