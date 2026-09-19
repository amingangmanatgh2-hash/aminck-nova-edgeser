# Horror 065 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=32..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:nausea 5 1 true
effect give @a[scores={novahorror.fear=43..}] minecraft:blindness 8 2 true
particle minecraft:ash ~ ~2 ~ 0.7 0.0 1.0 0.02 12
particle minecraft:soul ~ ~10 ~ 2 1 2 0.01 16
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 1.1 1.42
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.9 0.73
tellraw @a[scores={novahorror.fear=57..}] {"text":"§cنمی‌تونم نفس بکشم...","color":"red"}
title @a[distance=..9] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~2 ~15 ~9 {CustomName:'"§8Crow 65-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-5 ~21 ~0 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 65-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.97
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=88..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
# End horror 065
