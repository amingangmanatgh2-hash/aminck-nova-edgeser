# Horror 039 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=54..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:darkness 5 1 true
effect give @a[scores={novahorror.fear=75..}] minecraft:hunger 6 2 true
particle minecraft:sculk_soul ~ ~2 ~ 0.5 0.9 0.6 0.02 12
particle minecraft:spore_blossom_air ~ ~10 ~ 2 1 3 0.01 15
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1.2 1.10
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.6 0.42
tellraw @a[scores={novahorror.fear=82..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..8] subtitle {"text":"§c...برگرد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-15 ~19 ~8 {CustomName:'"§8Crow 39-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~10 ~18 ~15 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 39-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.78
execute if predicate novahorror:is_raining run particle minecraft:crimson_spore ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=72..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:wither 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.45
summon minecraft:parrot ~2 ~9 ~-5 {CustomName:'"§8Raven 39-21"',NoGravity:0b,Tags:["raven_39"]}
title @a[scores={novahorror.fear=67..}] actionbar {"text":"§8...کسی دنبالم میاد...","color":"dark_red"}
# End horror 039 enhanced 25 diverse
