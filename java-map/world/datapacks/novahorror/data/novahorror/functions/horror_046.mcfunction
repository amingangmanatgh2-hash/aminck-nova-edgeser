# Horror 046 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=43..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:nausea 3 0 true
effect give @a[scores={novahorror.fear=41..}] minecraft:blindness 4 2 true
particle minecraft:dripping_obsidian_tear ~ ~4 ~ 0.1 0.6 1.0 0.08 18
particle minecraft:soul ~ ~10 ~ 4 1 4 0.01 21
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 1.0 0.40
playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 0.5 1.10
tellraw @a[scores={novahorror.fear=58..}] {"text":"§4§lاو اینجاست!","color":"red"}
title @a[distance=..7] subtitle {"text":"§c...برگرد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~0 ~20 ~8 {CustomName:'"§8Crow 46-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-2 ~18 ~-16 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 46-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.60
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=89..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:wither 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 0.6 0.54
summon minecraft:parrot ~7 ~13 ~-12 {CustomName:'"§8Raven 46-21"',NoGravity:0b,Tags:["raven_46"]}
title @a[scores={novahorror.fear=52..}] actionbar {"text":"§7صدای پا...","color":"dark_red"}
# End horror 046 enhanced 25 diverse
