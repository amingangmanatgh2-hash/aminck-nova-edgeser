# Horror 003 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=32..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:blindness 5 0 true
effect give @a[scores={novahorror.fear=72..}] minecraft:weakness 5 2 true
particle minecraft:spore_blossom_air ~ ~3 ~ 0.6 0.7 0.3 0.09 18
particle minecraft:soul_fire_flame ~ ~10 ~ 2 1 3 0.01 14
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.9 1.42
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.8 0.48
tellraw @a[scores={novahorror.fear=79..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..9] subtitle {"text":"§cقلبم تند میزنه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~1 ~20 ~-9 {CustomName:'"§8Crow 3-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~8 ~21 ~-14 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 3-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.83
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=89..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:crimson_spore ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:slowness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 0.6 0.94
summon minecraft:parrot ~14 ~10 ~-11 {CustomName:'"§8Raven 3-21"',NoGravity:0b,Tags:["raven_3"]}
title @a[scores={novahorror.fear=79..}] actionbar {"text":"§8...الارا منتظره...","color":"dark_red"}
# End horror 003 enhanced 25 diverse
