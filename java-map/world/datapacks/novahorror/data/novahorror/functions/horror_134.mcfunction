# Horror 134 - location_forest - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=47..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:mining_fatigue 6 0 true
effect give @a[scores={novahorror.fear=51..}] minecraft:slowness 8 1 true
particle minecraft:sculk_soul ~ ~5 ~ 0.6 0.8 0.8 0.07 11
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 2 1 2 0.01 23
playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 1.0 0.46
playsound minecraft:entity.skeleton.ambient ambient @a ~ ~ ~ 0.7 1.17
tellraw @a[scores={novahorror.fear=62..}] {"text":"§8...واقعی نیست...","color":"red"}
title @a[distance=..6] subtitle {"text":"§7چرا تنها شدم؟","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:oak_leaves run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~16 ~15 ~1 {CustomName:'"§8Crow 134-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-19 ~22 ~-9 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 134-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.88
execute if predicate novahorror:is_raining run particle minecraft:soul ~ ~5 ~ 3 1 3 0.02 11
tag @a[scores={novahorror.fear=79..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:crimson_spore ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 0.6 0.56
summon minecraft:parrot ~3 ~8 ~-5 {CustomName:'"§8Raven 134-21"',NoGravity:0b,Tags:["raven_134"]}
title @a[scores={novahorror.fear=52..}] actionbar {"text":"§4او می‌بینه...","color":"dark_red"}
# End horror 134 enhanced 25 diverse
