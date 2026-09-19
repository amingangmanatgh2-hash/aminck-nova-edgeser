# Horror 061 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=34..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:slowness 3 0 true
effect give @a[scores={novahorror.fear=66..}] minecraft:weakness 7 0 true
particle minecraft:sculk_soul ~ ~2 ~ 0.3 0.1 0.6 0.06 12
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 5 1 4 0.01 11
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 1.1 0.98
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 1.06
tellraw @a[scores={novahorror.fear=66..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..10] subtitle {"text":"§c...برگرد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-11 ~20 ~-14 {CustomName:'"§8Crow 61-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~9 ~23 ~-3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 61-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 0.7 0.88
execute if predicate novahorror:is_raining run particle minecraft:crimson_spore ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=81..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
# End horror 061
