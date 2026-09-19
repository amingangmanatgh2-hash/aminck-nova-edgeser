# Horror 097 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=35..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:weakness 5 1 true
effect give @a[scores={novahorror.fear=76..}] minecraft:hunger 3 2 true
particle minecraft:witch ~ ~4 ~ 0.2 0.6 0.1 0.01 7
particle minecraft:spore_blossom_air ~ ~10 ~ 2 1 2 0.01 14
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1.1 1.16
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.8 0.64
tellraw @a[scores={novahorror.fear=82..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..10] subtitle {"text":"§8سایه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~17 ~19 ~4 {CustomName:'"§8Crow 97-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-3 ~19 ~-7 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 97-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.74
execute if predicate novahorror:is_raining run particle minecraft:white_ash ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=76..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:nausea 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 0.6 0.53
summon minecraft:parrot ~-9 ~9 ~-2 {CustomName:'"§8Raven 97-21"',NoGravity:0b,Tags:["raven_97"]}
title @a[scores={novahorror.fear=64..}] actionbar {"text":"§5...زمان برگشت...","color":"dark_red"}
# End horror 097 enhanced 25 diverse
