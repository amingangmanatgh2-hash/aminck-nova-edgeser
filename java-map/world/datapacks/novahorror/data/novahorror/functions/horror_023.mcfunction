# Horror 023 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=43..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:weakness 5 1 true
effect give @a[scores={novahorror.fear=58..}] minecraft:hunger 7 1 true
particle minecraft:white_ash ~ ~5 ~ 0.9 1.0 0.5 0.09 17
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 4 1 5 0.01 13
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.8 1.05
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.7 0.72
tellraw @a[scores={novahorror.fear=58..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§4§lاو اینجاست!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~19 ~21 ~-15 {CustomName:'"§8Crow 23-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~12 ~16 ~12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 23-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.7 0.69
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=79..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:darkness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.84
summon minecraft:parrot ~-12 ~5 ~-4 {CustomName:'"§8Raven 23-21"',NoGravity:0b,Tags:["raven_23"]}
title @a[scores={novahorror.fear=58..}] actionbar {"text":"§7...نمی‌تونی فرار کنی...","color":"dark_red"}
# End horror 023 enhanced 25 diverse
