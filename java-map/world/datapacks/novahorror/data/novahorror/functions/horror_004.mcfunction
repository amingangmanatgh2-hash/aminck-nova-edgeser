# Horror 004 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=25..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:wither 4 1 true
effect give @a[scores={novahorror.fear=63..}] minecraft:blindness 3 1 true
particle minecraft:warped_spore ~ ~3 ~ 0.1 0.2 0.0 0.03 10
particle minecraft:smoke ~ ~10 ~ 2 1 2 0.01 11
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.9 1.16
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.8 0.60
tellraw @a[scores={novahorror.fear=84..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..6] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-8 ~17 ~-5 {CustomName:'"§8Crow 4-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-2 ~17 ~17 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 4-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.54
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=87..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:darkness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 0.6 0.99
summon minecraft:parrot ~8 ~15 ~-8 {CustomName:'"§8Raven 4-21"',NoGravity:0b,Tags:["raven_4"]}
title @a[scores={novahorror.fear=67..}] actionbar {"text":"§7مه غلیظ...","color":"dark_red"}
# End horror 004 enhanced 25 diverse
