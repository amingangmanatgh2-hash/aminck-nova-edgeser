# Horror 131 - time_night - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=37..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:wither 3 0 true
effect give @a[scores={novahorror.fear=46..}] minecraft:hunger 5 0 true
particle minecraft:warped_spore ~ ~3 ~ 0.2 0.9 0.6 0.04 14
particle minecraft:ash ~ ~10 ~ 2 1 5 0.01 16
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.6 0.51
playsound minecraft:entity.warden.heartbeat ambient @a ~ ~ ~ 0.5 0.97
tellraw @a[scores={novahorror.fear=76..}] {"text":"§7صدای پا...","color":"red"}
title @a[distance=..10] subtitle {"text":"§8...کسی دنبالم میاد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_soil run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~16 ~24 ~-2 {CustomName:'"§8Crow 131-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-20 ~24 ~-3 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 131-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..5] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.zombie.ambient hostile @a ~ ~ ~ 0.7 0.68
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=88..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:soul_fire_flame_emitter ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:darkness 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.portal.ambient hostile @s ~ ~ ~ 0.6 0.98
summon minecraft:parrot ~2 ~14 ~-5 {CustomName:'"§8Raven 131-21"',NoGravity:0b,Tags:["raven_131"]}
title @a[scores={novahorror.fear=61..}] actionbar {"text":"§8...الارا منتظره...","color":"dark_red"}
# End horror 131 enhanced 25 diverse
