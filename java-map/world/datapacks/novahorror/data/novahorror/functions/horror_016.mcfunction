# Horror 016 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=55..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:hunger 6 0 true
effect give @a[scores={novahorror.fear=70..}] minecraft:blindness 3 1 true
particle minecraft:ash ~ ~1 ~ 0.6 0.1 0.8 0.05 18
particle minecraft:smoke ~ ~10 ~ 2 1 2 0.01 16
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.7 1.02
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.6 1.16
tellraw @a[scores={novahorror.fear=85..}] {"text":"§4فرار کن!","color":"red"}
title @a[distance=..8] subtitle {"text":"§c...برگرد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-7 ~16 ~4 {CustomName:'"§8Crow 16-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~9 ~22 ~-11 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 16-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.80
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=84..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:wither 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 0.6 0.56
summon minecraft:parrot ~3 ~6 ~-5 {CustomName:'"§8Raven 16-21"',NoGravity:0b,Tags:["raven_16"]}
title @a[scores={novahorror.fear=52..}] actionbar {"text":"§4او می‌بینه...","color":"dark_red"}
# End horror 016 enhanced 25 diverse
