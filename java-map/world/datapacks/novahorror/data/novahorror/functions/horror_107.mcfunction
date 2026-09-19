# Horror 107 - crow_event - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=37..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:slowness 6 1 true
effect give @a[scores={novahorror.fear=85..}] minecraft:darkness 5 2 true
particle minecraft:soul_fire_flame_emitter ~ ~5 ~ 0.4 0.9 0.5 0.04 20
particle minecraft:composter ~ ~10 ~ 4 1 2 0.01 24
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.62
playsound minecraft:entity.zombie.ambient ambient @a ~ ~ ~ 0.7 1.18
tellraw @a[scores={novahorror.fear=64..}] {"text":"§8...کسی دنبالم میاد...","color":"red"}
title @a[distance=..7] subtitle {"text":"§8...واقعی نیست...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-2 ~25 ~-12 {CustomName:'"§8Crow 107-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~4 ~17 ~-12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 107-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.66
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=87..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:warped_spore ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 0.6 0.84
summon minecraft:parrot ~-14 ~5 ~8 {CustomName:'"§8Raven 107-21"',NoGravity:0b,Tags:["raven_107"]}
title @a[scores={novahorror.fear=72..}] actionbar {"text":"§4خون...","color":"dark_red"}
# End horror 107 enhanced 25 diverse
