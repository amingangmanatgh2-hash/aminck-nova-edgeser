# Horror 011 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=33..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:wither 6 1 true
effect give @a[scores={novahorror.fear=56..}] minecraft:mining_fatigue 8 1 true
particle minecraft:sculk_soul ~ ~5 ~ 0.9 0.7 0.5 0.08 5
particle minecraft:campfire_cosy_smoke ~ ~10 ~ 5 1 3 0.01 20
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1.1 1.20
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.5 0.75
tellraw @a[scores={novahorror.fear=83..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..11] subtitle {"text":"§4§lاو اینجاست!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~15 ~16 ~8 {CustomName:'"§8Crow 11-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-18 ~20 ~2 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 11-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.65
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=74..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
# End horror 011
