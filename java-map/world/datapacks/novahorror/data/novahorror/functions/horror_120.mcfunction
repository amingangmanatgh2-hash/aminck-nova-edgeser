# Horror 120 - time_rain - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=63..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:darkness 5 1 true
effect give @a[scores={novahorror.fear=69..}] minecraft:weakness 6 2 true
particle minecraft:sculk_soul ~ ~2 ~ 0.8 0.3 0.7 0.03 11
particle minecraft:warped_spore ~ ~10 ~ 2 1 4 0.01 26
playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 0.8 1.17
playsound minecraft:entity.skeleton.ambient ambient @a ~ ~ ~ 0.7 0.99
tellraw @a[scores={novahorror.fear=88..}] {"text":"§7...باد نجوا می‌کند...","color":"red"}
title @a[distance=..12] subtitle {"text":"§7...نمی‌تونی فرار کنی...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-20 ~19 ~0 {CustomName:'"§8Crow 120-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-12 ~21 ~-7 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 120-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.7 0.56
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=76..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 0.6 0.52
summon minecraft:parrot ~-7 ~13 ~5 {CustomName:'"§8Raven 120-21"',NoGravity:0b,Tags:["raven_120"]}
title @a[scores={novahorror.fear=64..}] actionbar {"text":"§7...نمی‌تونی فرار کنی...","color":"dark_red"}
# End horror 120 enhanced 25 diverse
