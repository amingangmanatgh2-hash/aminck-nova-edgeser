# Horror 126 - whisper - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=48..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:weakness 2 1 true
effect give @a[scores={novahorror.fear=62..}] minecraft:wither 4 0 true
particle minecraft:crimson_spore ~ ~3 ~ 0.7 0.8 0.8 0.03 20
particle minecraft:spore_blossom_air ~ ~10 ~ 2 1 2 0.01 29
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.74
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.7 1.06
tellraw @a[scores={novahorror.fear=57..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..8] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~7 ~21 ~18 {CustomName:'"§8Crow 126-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-18 ~18 ~12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 126-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.80
execute if predicate novahorror:is_raining run particle minecraft:dripping_obsidian_tear ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=80..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 1 0.6
# End horror 126 whisper
