# Horror 130 - location_basement - truly diverse
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=35..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:blindness 5 1 true
effect give @a[scores={novahorror.fear=49..}] minecraft:wither 5 0 true
particle minecraft:soul_fire_flame_emitter ~ ~2 ~ 0.6 0.5 0.4 0.09 16
particle minecraft:note ~ ~10 ~ 4 1 2 0.01 12
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.9 1.06
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.5 0.74
tellraw @a[scores={novahorror.fear=85..}] {"text":"§8...واقعی نیست...","color":"red"}
title @a[distance=..11] subtitle {"text":"§cکمک...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-14 ~16 ~5 {CustomName:'"§8Crow 130-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-14 ~18 ~-8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 130-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..6] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.skeleton.ambient hostile @a ~ ~ ~ 0.7 0.97
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 10
tag @a[scores={novahorror.fear=80..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.56
summon minecraft:parrot ~-5 ~6 ~3 {CustomName:'"§8Raven 130-21"',NoGravity:0b,Tags:["raven_130"]}
title @a[scores={novahorror.fear=64..}] actionbar {"text":"§8...کسی دنبالم میاد...","color":"dark_red"}
# End horror 130 enhanced 25 diverse
