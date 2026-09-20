# Horror 053 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=42..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:mining_fatigue 3 1 true
effect give @a[scores={novahorror.fear=79..}] minecraft:nausea 7 1 true
particle minecraft:warped_spore ~ ~2 ~ 0.8 0.3 0.3 0.07 13
particle minecraft:soul ~ ~10 ~ 3 1 4 0.01 13
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.8 1.13
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.8 0.77
tellraw @a[scores={novahorror.fear=63..}] {"text":"§c...برگرد...","color":"red"}
title @a[distance=..11] subtitle {"text":"§7...صدای کلاغ از ماه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~17 ~18 ~-10 {CustomName:'"§8Crow 53-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~16 ~19 ~1 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 53-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.98
execute if predicate novahorror:is_raining run particle minecraft:crimson_spore ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=81..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 0.6 0.92
summon minecraft:parrot ~-15 ~12 ~-12 {CustomName:'"§8Raven 53-21"',NoGravity:0b,Tags:["raven_53"]}
title @a[scores={novahorror.fear=50..}] actionbar {"text":"§8...الارا منتظره...","color":"dark_red"}
# End horror 053 enhanced 25 diverse
