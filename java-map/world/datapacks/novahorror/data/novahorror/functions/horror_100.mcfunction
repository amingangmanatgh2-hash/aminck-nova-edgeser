# Horror 100 - player_low_health - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=62..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:blindness 5 1 true
effect give @a[scores={novahorror.fear=85..}] minecraft:mining_fatigue 8 1 true
particle minecraft:crimson_spore ~ ~4 ~ 0.6 0.7 0.4 0.09 15
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 2 1 3 0.01 24
playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 1.0 1.35
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.8 1.09
tellraw @a[scores={novahorror.fear=72..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-12 ~20 ~4 {CustomName:'"§8Crow 100-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~1 ~21 ~-8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 100-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.71
execute if predicate novahorror:is_raining run particle minecraft:dripping_obsidian_tear ~ ~5 ~ 3 1 3 0.02 8
tag @a[scores={novahorror.fear=83..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 0.6 0.45
summon minecraft:parrot ~4 ~13 ~11 {CustomName:'"§8Raven 100-21"',NoGravity:0b,Tags:["raven_100"]}
title @a[scores={novahorror.fear=58..}] actionbar {"text":"§7...نمی‌تونی فرار کنی...","color":"dark_red"}
# End horror 100 enhanced 25 diverse
