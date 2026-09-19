# Horror 096 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=60..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:mining_fatigue 3 1 true
effect give @a[scores={novahorror.fear=57..}] minecraft:nausea 6 0 true
particle minecraft:crimson_spore ~ ~2 ~ 0.9 0.7 0.5 0.05 13
particle minecraft:sculk_soul ~ ~10 ~ 2 1 5 0.01 30
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.41
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.9 0.76
tellraw @a[scores={novahorror.fear=90..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..6] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-8 ~19 ~19 {CustomName:'"§8Crow 96-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-19 ~20 ~14 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 96-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.87
execute if predicate novahorror:is_raining run particle minecraft:crimson_spore ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=79..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
# End horror 096
