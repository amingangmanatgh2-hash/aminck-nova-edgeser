# Horror 103 - location_mansion - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=31..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:confusion 6 0 true
effect give @a[scores={novahorror.fear=80..}] minecraft:slowness 4 2 true
particle minecraft:spore_blossom_air ~ ~3 ~ 0.2 0.4 0.3 0.02 11
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 3 1 3 0.01 24
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.9 0.63
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.8 1.07
tellraw @a[scores={novahorror.fear=75..}] {"text":"§4خون...","color":"red"}
title @a[distance=..12] subtitle {"text":"§8...واقعی نیست...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~6 ~24 ~-12 {CustomName:'"§8Crow 103-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-7 ~18 ~-1 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 103-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.88
execute if predicate novahorror:is_raining run particle minecraft:crimson_spore ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=70..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.51
summon minecraft:parrot ~1 ~8 ~5 {CustomName:'"§8Raven 103-21"',NoGravity:0b,Tags:["raven_103"]}
title @a[scores={novahorror.fear=80..}] actionbar {"text":"§7مه غلیظ...","color":"dark_red"}
# End horror 103 enhanced 25 diverse
