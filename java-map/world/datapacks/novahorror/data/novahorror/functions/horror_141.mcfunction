# Horror 141 - location_basement - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=54..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:darkness 5 0 true
effect give @a[scores={novahorror.fear=73..}] minecraft:wither 5 1 true
particle minecraft:dripping_obsidian_tear ~ ~4 ~ 0.6 0.6 0.2 0.03 10
particle minecraft:white_ash ~ ~10 ~ 3 1 5 0.01 17
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.7 1.20
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.9 0.79
tellraw @a[scores={novahorror.fear=75..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..9] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:stone_bricks run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~16 ~18 ~8 {CustomName:'"§8Crow 141-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~13 ~24 ~-16 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 141-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.7 0.99
execute if predicate novahorror:is_raining run particle minecraft:soul_fire_flame_emitter ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=87..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:note ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:blindness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.bell.resonate hostile @s ~ ~ ~ 0.6 0.68
summon minecraft:parrot ~0 ~7 ~4 {CustomName:'"§8Raven 141-21"',NoGravity:0b,Tags:["raven_141"]}
title @a[scores={novahorror.fear=74..}] actionbar {"text":"§7...باد نجوا می‌کند...","color":"dark_red"}
# End horror 141 enhanced 25 diverse
