# Horror 008 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=26..}] novahorror.sanity 1
effect give @a[distance=..11] minecraft:weakness 5 1 true
effect give @a[scores={novahorror.fear=74..}] minecraft:slowness 3 2 true
particle minecraft:smoke ~ ~4 ~ 0.3 0.2 0.5 0.04 5
particle minecraft:ash ~ ~10 ~ 4 1 4 0.01 23
playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 1.46
playsound minecraft:ambient.basalt_deltas.mood ambient @a ~ ~ ~ 0.5 0.90
tellraw @a[scores={novahorror.fear=51..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..10] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~17 ~19 ~13 {CustomName:'"§8Crow 8-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~16 ~20 ~8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 8-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 0.66
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame ~ ~5 ~ 3 1 3 0.02 7
tag @a[scores={novahorror.fear=87..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul_fire_flame_emitter ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:confusion 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.86
summon minecraft:parrot ~3 ~6 ~12 {CustomName:'"§8Raven 8-21"',NoGravity:0b,Tags:["raven_8"]}
title @a[scores={novahorror.fear=67..}] actionbar {"text":"§7...صدای کلاغ از ماه...","color":"dark_red"}
# End horror 008 enhanced 25 diverse
