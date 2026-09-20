# Horror 021 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=41..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:hunger 3 0 true
effect give @a[scores={novahorror.fear=72..}] minecraft:wither 5 0 true
particle minecraft:soul ~ ~4 ~ 0.2 0.2 0.2 0.09 17
particle minecraft:spore_blossom_air ~ ~10 ~ 2 1 2 0.01 12
playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 1.24
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.5 0.61
tellraw @a[scores={novahorror.fear=56..}] {"text":"§4خون...","color":"red"}
title @a[distance=..7] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~7 ~20 ~13 {CustomName:'"§8Crow 21-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~3 ~24 ~-13 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 21-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.64
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=77..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:warped_spore ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:darkness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 0.6 0.80
summon minecraft:parrot ~-2 ~7 ~-14 {CustomName:'"§8Raven 21-21"',NoGravity:0b,Tags:["raven_21"]}
title @a[scores={novahorror.fear=67..}] actionbar {"text":"§7مه غلیظ...","color":"dark_red"}
# End horror 021 enhanced 25 diverse
