# Horror 146 - time_rain - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=36..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:hunger 2 0 true
effect give @a[scores={novahorror.fear=76..}] minecraft:mining_fatigue 6 0 true
particle minecraft:crimson_spore ~ ~2 ~ 0.9 0.4 0.4 0.06 9
particle minecraft:soul ~ ~10 ~ 5 1 5 0.01 16
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1.1 0.83
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 0.8 0.93
tellraw @a[scores={novahorror.fear=75..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§7چرا تنها شدم؟","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-1 ~17 ~6 {CustomName:'"§8Crow 146-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~0 ~21 ~5 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 146-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.96
execute if predicate novahorror:is_raining run particle minecraft:note ~ ~5 ~ 3 1 3 0.02 14
tag @a[scores={novahorror.fear=82..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
# End horror 146 time_rain
