# Horror 042 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=29..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:weakness 4 0 true
effect give @a[scores={novahorror.fear=52..}] minecraft:mining_fatigue 6 1 true
particle minecraft:crimson_spore ~ ~3 ~ 1.0 0.2 0.6 0.05 11
particle minecraft:witch ~ ~10 ~ 3 1 5 0.01 27
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.8 0.86
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.8 0.96
tellraw @a[scores={novahorror.fear=51..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..12] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~15 ~22 ~8 {CustomName:'"§8Crow 42-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-10 ~21 ~20 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 42-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.84
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=73..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 1 0.6
# End horror 042
