# Horror 143 - time_night - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=28..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:hunger 5 1 true
effect give @a[scores={novahorror.fear=84..}] minecraft:nausea 7 2 true
particle minecraft:campfire_cosy_smoke ~ ~3 ~ 0.7 0.6 0.8 0.08 10
particle minecraft:smoke ~ ~10 ~ 2 1 3 0.01 18
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.8 0.54
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.8 0.97
tellraw @a[scores={novahorror.fear=56..}] {"text":"§c...برگرد...","color":"red"}
title @a[distance=..8] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~10 ~15 ~2 {CustomName:'"§8Crow 143-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~7 ~17 ~-6 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 143-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.63
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=74..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.96
summon minecraft:parrot ~-8 ~5 ~11 {CustomName:'"§8Raven 143-21"',NoGravity:0b,Tags:["raven_143"]}
title @a[scores={novahorror.fear=64..}] actionbar {"text":"§4او می‌بینه...","color":"dark_red"}
# End horror 143 enhanced 25 diverse
