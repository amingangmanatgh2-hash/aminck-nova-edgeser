# Horror 036 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=30..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:hunger 3 1 true
effect give @a[scores={novahorror.fear=50..}] minecraft:slowness 3 1 true
particle minecraft:soul_fire_flame ~ ~5 ~ 0.1 1.0 0.7 0.02 16
particle minecraft:spore_blossom_air ~ ~10 ~ 3 1 4 0.01 14
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1.1 0.78
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.9 1.20
tellraw @a[scores={novahorror.fear=57..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..7] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~11 ~18 ~8 {CustomName:'"§8Crow 36-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~9 ~20 ~-18 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 36-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.64
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=84..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:wither 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 0.6 0.72
summon minecraft:parrot ~-11 ~8 ~-6 {CustomName:'"§8Raven 36-21"',NoGravity:0b,Tags:["raven_36"]}
title @a[scores={novahorror.fear=78..}] actionbar {"text":"§c...برگرد...","color":"dark_red"}
# End horror 036 enhanced 25 diverse
