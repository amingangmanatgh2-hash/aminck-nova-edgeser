# Horror 139 - location_mansion - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=43..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:confusion 4 1 true
effect give @a[scores={novahorror.fear=80..}] minecraft:mining_fatigue 8 2 true
particle minecraft:ash ~ ~4 ~ 0.2 0.4 0.8 0.05 17
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 3 1 5 0.01 23
playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 0.9 1.36
playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.5 0.83
tellraw @a[scores={novahorror.fear=86..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..8] subtitle {"text":"§4§lاو اینجاست!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:stone_bricks run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~2 ~18 ~-16 {CustomName:'"§8Crow 139-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~19 ~17 ~-20 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 139-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.70
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 12
tag @a[scores={novahorror.fear=78..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:wither 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 0.6 0.66
summon minecraft:parrot ~-7 ~11 ~-3 {CustomName:'"§8Raven 139-21"',NoGravity:0b,Tags:["raven_139"]}
title @a[scores={novahorror.fear=61..}] actionbar {"text":"§7مه غلیظ...","color":"dark_red"}
# End horror 139 enhanced 25 diverse
