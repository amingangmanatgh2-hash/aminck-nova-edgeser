# Horror 022 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=48..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:nausea 2 1 true
effect give @a[scores={novahorror.fear=80..}] minecraft:slowness 4 2 true
particle minecraft:ash ~ ~5 ~ 0.8 0.5 0.2 0.07 8
particle minecraft:soul ~ ~10 ~ 5 1 5 0.01 24
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.6 0.62
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.6 0.76
tellraw @a[scores={novahorror.fear=78..}] {"text":"§4او می‌بینه...","color":"red"}
title @a[distance=..6] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:deepslate run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-1 ~22 ~-5 {CustomName:'"§8Crow 22-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~1 ~18 ~17 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 22-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.94
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=90..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul_fire_flame_emitter ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:levitation 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 0.6 0.44
summon minecraft:parrot ~-11 ~14 ~6 {CustomName:'"§8Raven 22-21"',NoGravity:0b,Tags:["raven_22"]}
title @a[scores={novahorror.fear=85..}] actionbar {"text":"§7مه غلیظ...","color":"dark_red"}
# End horror 022 enhanced 25 diverse
