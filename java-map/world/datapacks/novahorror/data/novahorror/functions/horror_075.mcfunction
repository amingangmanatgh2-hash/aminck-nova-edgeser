# Horror 075 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=29..}] novahorror.sanity 1
effect give @a[distance=..8] minecraft:wither 3 0 true
effect give @a[scores={novahorror.fear=68..}] minecraft:slowness 6 2 true
particle minecraft:soul_fire_flame ~ ~4 ~ 0.2 0.0 0.2 0.03 20
particle minecraft:soul ~ ~10 ~ 2 1 3 0.01 25
playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 1.1 0.80
playsound minecraft:entity.soul_sand_valley_mood ambient @a ~ ~ ~ 0.8 1.07
tellraw @a[scores={novahorror.fear=71..}] {"text":"§4فرار کن!","color":"red"}
title @a[distance=..8] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:gravel run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-5 ~20 ~10 {CustomName:'"§8Crow 75-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~12 ~19 ~-12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 75-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.88
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=75..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:weakness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 0.6 0.56
summon minecraft:parrot ~-14 ~5 ~-6 {CustomName:'"§8Raven 75-21"',NoGravity:0b,Tags:["raven_75"]}
title @a[scores={novahorror.fear=69..}] actionbar {"text":"§7...صدای کلاغ از ماه...","color":"dark_red"}
# End horror 075 enhanced 25 diverse
