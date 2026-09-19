# Horror 050 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=47..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:blindness 2 1 true
effect give @a[scores={novahorror.fear=70..}] minecraft:nausea 4 1 true
particle minecraft:smoke ~ ~5 ~ 0.7 0.3 0.2 0.04 11
particle minecraft:sculk_soul ~ ~10 ~ 4 1 2 0.01 21
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.9 0.63
playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.5 0.94
tellraw @a[scores={novahorror.fear=53..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..12] subtitle {"text":"§7صدای پا...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~7 ~18 ~0 {CustomName:'"§8Crow 50-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-10 ~19 ~17 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 50-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..8] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.99
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=82..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:nausea 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.52
summon minecraft:parrot ~11 ~5 ~-10 {CustomName:'"§8Raven 50-21"',NoGravity:0b,Tags:["raven_50"]}
title @a[scores={novahorror.fear=57..}] actionbar {"text":"§7...صدای کلاغ از ماه...","color":"dark_red"}
# End horror 050 enhanced 25 diverse
