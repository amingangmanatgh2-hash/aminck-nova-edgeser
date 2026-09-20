# Horror 101 - location_basement - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=39..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:darkness 4 1 true
effect give @a[scores={novahorror.fear=84..}] minecraft:hunger 3 1 true
particle minecraft:soul_fire_flame_emitter ~ ~5 ~ 0.8 0.4 0.6 0.03 11
particle minecraft:crimson_spore ~ ~10 ~ 5 1 3 0.01 18
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 1.0 0.70
playsound minecraft:entity.zombie.ambient ambient @a ~ ~ ~ 1.0 0.77
tellraw @a[scores={novahorror.fear=58..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..7] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:stone_bricks run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-16 ~16 ~-9 {CustomName:'"§8Crow 101-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-20 ~18 ~8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 101-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.68
execute if predicate novahorror:is_raining run particle minecraft:soul ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=79..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 0.6 0.50
summon minecraft:parrot ~6 ~10 ~-12 {CustomName:'"§8Raven 101-21"',NoGravity:0b,Tags:["raven_101"]}
title @a[scores={novahorror.fear=85..}] actionbar {"text":"§4فرار کن!","color":"dark_red"}
# End horror 101 enhanced 25 diverse
