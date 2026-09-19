# Horror 094 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=58..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:slowness 5 0 true
effect give @a[scores={novahorror.fear=68..}] minecraft:wither 5 0 true
particle minecraft:warped_spore ~ ~5 ~ 1.0 0.3 1.0 0.02 17
particle minecraft:soul_fire_flame ~ ~10 ~ 5 1 2 0.01 23
playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.7 0.44
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.7 0.75
tellraw @a[scores={novahorror.fear=80..}] {"text":"§4§lاو اینجاست!","color":"red"}
title @a[distance=..12] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:grass_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-3 ~24 ~13 {CustomName:'"§8Crow 94-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-13 ~16 ~12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 94-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.56
execute if predicate novahorror:is_raining run particle minecraft:soul ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=73..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 0.6 0.52
summon minecraft:parrot ~-13 ~12 ~-6 {CustomName:'"§8Raven 94-21"',NoGravity:0b,Tags:["raven_94"]}
title @a[scores={novahorror.fear=66..}] actionbar {"text":"§4فرار کن!","color":"dark_red"}
# End horror 094 enhanced 25 diverse
