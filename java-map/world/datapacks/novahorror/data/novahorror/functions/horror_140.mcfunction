# Horror 140 - location_mansion - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=40..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:slowness 5 1 true
effect give @a[scores={novahorror.fear=74..}] minecraft:hunger 8 1 true
particle minecraft:note ~ ~1 ~ 0.3 0.4 0.9 0.06 19
particle minecraft:smoke ~ ~10 ~ 3 1 3 0.01 13
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.8 0.38
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.9 0.99
tellraw @a[scores={novahorror.fear=59..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..7] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~9 ~25 ~-14 {CustomName:'"§8Crow 140-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~14 ~24 ~20 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 140-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.66
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=78..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
# End horror 140 location_mansion
