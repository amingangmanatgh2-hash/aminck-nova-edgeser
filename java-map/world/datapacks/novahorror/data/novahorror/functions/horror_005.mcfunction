# Horror 005 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=34..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:wither 2 0 true
effect give @a[scores={novahorror.fear=48..}] minecraft:weakness 5 1 true
particle minecraft:smoke ~ ~2 ~ 0.6 0.9 0.1 0.08 8
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 2 1 5 0.01 14
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.9 0.89
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.5 0.74
tellraw @a[scores={novahorror.fear=64..}] {"text":"§7چرا تنها شدم؟","color":"red"}
title @a[distance=..8] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-14 ~21 ~6 {CustomName:'"§8Crow 5-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~20 ~18 ~14 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 5-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.73
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 14
tag @a[scores={novahorror.fear=85..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:wither 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 0.6 0.95
summon minecraft:parrot ~-10 ~12 ~11 {CustomName:'"§8Raven 5-21"',NoGravity:0b,Tags:["raven_5"]}
title @a[scores={novahorror.fear=77..}] actionbar {"text":"§c...برگرد...","color":"dark_red"}
# End horror 005 enhanced 25 diverse
