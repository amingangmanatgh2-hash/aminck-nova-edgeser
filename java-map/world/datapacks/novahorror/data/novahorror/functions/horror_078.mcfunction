# Horror 078 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 2
scoreboard players remove @a[scores={novahorror.fear=38..}] novahorror.sanity 1
effect give @a[distance=..6] minecraft:nausea 5 1 true
effect give @a[scores={novahorror.fear=65..}] minecraft:slowness 4 2 true
particle minecraft:witch ~ ~4 ~ 0.2 0.8 0.5 0.01 14
particle minecraft:crimson_spore ~ ~10 ~ 5 1 4 0.01 23
playsound minecraft:ambient.basalt_deltas.mood hostile @a ~ ~ ~ 0.8 1.29
playsound minecraft:entity.ender_man.stare ambient @a ~ ~ ~ 0.5 0.61
tellraw @a[scores={novahorror.fear=55..}] {"text":"§7...صدای کلاغ از ماه...","color":"red"}
title @a[distance=..8] subtitle {"text":"§7چرا تنها شدم؟","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:soul_sand run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~11 ~15 ~-10 {CustomName:'"§8Crow 78-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~13 ~21 ~-2 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 78-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.70
execute if predicate novahorror:is_raining run particle minecraft:dripping_obsidian_tear ~ ~5 ~ 3 1 3 0.02 6
tag @a[scores={novahorror.fear=81..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1 0.6
# End horror 078
