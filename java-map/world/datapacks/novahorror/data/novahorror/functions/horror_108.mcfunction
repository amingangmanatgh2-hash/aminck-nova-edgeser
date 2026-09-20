# Horror 108 - location_basement - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=63..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:blindness 3 1 true
effect give @a[scores={novahorror.fear=77..}] minecraft:weakness 5 0 true
particle minecraft:composter ~ ~5 ~ 0.3 0.5 0.6 0.03 9
particle minecraft:witch ~ ~10 ~ 3 1 4 0.01 10
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 1.0 0.43
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.8 0.43
tellraw @a[scores={novahorror.fear=67..}] {"text":"§c...برگرد...","color":"red"}
title @a[distance=..9] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-2 ~22 ~17 {CustomName:'"§8Crow 108-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~8 ~24 ~-18 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 108-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 0.7 0.64
execute if predicate novahorror:is_raining run particle minecraft:white_ash ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=85..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:white_ash ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:darkness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 0.6 0.68
summon minecraft:parrot ~-2 ~5 ~-8 {CustomName:'"§8Raven 108-21"',NoGravity:0b,Tags:["raven_108"]}
title @a[scores={novahorror.fear=58..}] actionbar {"text":"§8...الارا منتظره...","color":"dark_red"}
# End horror 108 enhanced 25 diverse
