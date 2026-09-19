# Horror 027 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=30..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:nausea 6 0 true
effect give @a[scores={novahorror.fear=53..}] minecraft:mining_fatigue 8 1 true
particle minecraft:crimson_spore ~ ~3 ~ 0.6 0.8 0.8 0.05 6
particle minecraft:soul_fire_flame ~ ~10 ~ 3 1 4 0.01 12
playsound minecraft:entity.ender_man.stare hostile @a ~ ~ ~ 1.2 1.12
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.7 1.01
tellraw @a[scores={novahorror.fear=64..}] {"text":"§8سایه...","color":"red"}
title @a[distance=..8] subtitle {"text":"§4فرار کن!","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:blackstone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-4 ~19 ~18 {CustomName:'"§8Crow 27-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~6 ~22 ~-9 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 27-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.98
execute if predicate novahorror:is_raining run particle minecraft:smoke ~ ~5 ~ 3 1 3 0.02 5
tag @a[scores={novahorror.fear=76..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:warped_spore ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:hunger 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 0.6 0.86
summon minecraft:parrot ~-12 ~9 ~-2 {CustomName:'"§8Raven 27-21"',NoGravity:0b,Tags:["raven_27"]}
title @a[scores={novahorror.fear=51..}] actionbar {"text":"§5...زمان برگشت...","color":"dark_red"}
# End horror 027 enhanced 25 diverse
