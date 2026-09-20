# Horror 015 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=50..}] novahorror.sanity 1
effect give @a[distance=..12] minecraft:wither 2 0 true
effect give @a[scores={novahorror.fear=52..}] minecraft:blindness 3 1 true
particle minecraft:white_ash ~ ~4 ~ 0.0 0.2 0.7 0.01 16
particle minecraft:spore_blossom_air ~ ~10 ~ 3 1 5 0.01 22
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.9 0.42
playsound minecraft:entity.warden.roar ambient @a ~ ~ ~ 0.7 1.08
tellraw @a[scores={novahorror.fear=51..}] {"text":"§7مه غلیظ...","color":"red"}
title @a[distance=..9] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~3 ~16 ~-14 {CustomName:'"§8Crow 15-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~0 ~20 ~-12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 15-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 0.7 0.98
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=73..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 0.6 0.57
summon minecraft:parrot ~-8 ~5 ~2 {CustomName:'"§8Raven 15-21"',NoGravity:0b,Tags:["raven_15"]}
title @a[scores={novahorror.fear=81..}] actionbar {"text":"§cقلبم تند میزنه...","color":"dark_red"}
# End horror 015 enhanced 25 diverse
