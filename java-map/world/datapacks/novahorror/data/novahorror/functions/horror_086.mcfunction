# Horror 086 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=35..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:wither 6 1 true
effect give @a[scores={novahorror.fear=61..}] minecraft:nausea 7 2 true
particle minecraft:ash ~ ~5 ~ 0.2 0.3 0.6 0.08 16
particle minecraft:spore_blossom_air ~ ~10 ~ 2 1 5 0.01 30
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.8 1.37
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.8 1.03
tellraw @a[scores={novahorror.fear=81..}] {"text":"§cقلبم تند میزنه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§7چرا تنها شدم؟","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~15 ~19 ~-10 {CustomName:'"§8Crow 86-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-11 ~21 ~-12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 86-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.66
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=78..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
# End horror 086
