# Horror 030 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=47..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:nausea 2 0 true
effect give @a[scores={novahorror.fear=76..}] minecraft:hunger 8 2 true
particle minecraft:warped_spore ~ ~4 ~ 0.1 0.7 0.6 0.03 8
particle minecraft:soul_fire_flame ~ ~10 ~ 3 1 3 0.01 23
playsound minecraft:ambient.cave hostile @a ~ ~ ~ 0.6 1.22
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 0.8 0.51
tellraw @a[scores={novahorror.fear=87..}] {"text":"§4فرار کن!","color":"red"}
title @a[distance=..7] subtitle {"text":"§8در بسته است...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~15 ~18 ~17 {CustomName:'"§8Crow 30-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~13 ~24 ~-18 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 30-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.95
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=78..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:wither 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.68
summon minecraft:parrot ~-9 ~15 ~8 {CustomName:'"§8Raven 30-21"',NoGravity:0b,Tags:["raven_30"]}
title @a[scores={novahorror.fear=66..}] actionbar {"text":"§7...نمی‌تونی فرار کنی...","color":"dark_red"}
# End horror 030 enhanced 25 diverse
