# Horror 058 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=30..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:wither 3 1 true
effect give @a[scores={novahorror.fear=77..}] minecraft:darkness 3 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.2 0.3 0.02 5
particle minecraft:smoke ~ ~10 ~ 4 1 2 0.01 28
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.9 0.70
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 0.5 1.06
tellraw @a[scores={novahorror.fear=79..}] {"text":"§cنمی‌تونم نفس بکشم...","color":"red"}
title @a[distance=..6] subtitle {"text":"§cکمک...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-2 ~24 ~-19 {CustomName:'"§8Crow 58-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-2 ~21 ~19 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 58-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.75
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=83..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:slowness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 0.6 0.51
summon minecraft:parrot ~-3 ~14 ~-4 {CustomName:'"§8Raven 58-21"',NoGravity:0b,Tags:["raven_58"]}
title @a[scores={novahorror.fear=81..}] actionbar {"text":"§7مه غلیظ...","color":"dark_red"}
# End horror 058 enhanced 25 diverse
