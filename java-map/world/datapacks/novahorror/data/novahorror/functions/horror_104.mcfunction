# Horror 104 - time_night - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=25..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:mining_fatigue 6 1 true
effect give @a[scores={novahorror.fear=58..}] minecraft:darkness 7 1 true
particle minecraft:smoke ~ ~4 ~ 0.6 0.2 0.5 0.09 15
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 4 1 3 0.01 17
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 1.2 1.29
playsound minecraft:block.amethyst_block.chime ambient @a ~ ~ ~ 0.7 1.17
tellraw @a[scores={novahorror.fear=61..}] {"text":"§c...برگرد...","color":"red"}
title @a[distance=..12] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-1 ~19 ~11 {CustomName:'"§8Crow 104-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-10 ~21 ~9 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 104-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.81
execute if predicate novahorror:is_raining run particle minecraft:sculk_soul ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=73..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.76
summon minecraft:parrot ~1 ~7 ~-4 {CustomName:'"§8Raven 104-21"',NoGravity:0b,Tags:["raven_104"]}
title @a[scores={novahorror.fear=78..}] actionbar {"text":"§cنمی‌تونم نفس بکشم...","color":"dark_red"}
# End horror 104 enhanced 25 diverse
