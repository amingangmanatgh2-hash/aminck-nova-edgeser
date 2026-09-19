# Horror 147 - player_low_health - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=55..}] novahorror.sanity 1
effect give @a[distance=..7] minecraft:weakness 2 0 true
effect give @a[scores={novahorror.fear=50..}] minecraft:blindness 3 1 true
particle minecraft:ash ~ ~3 ~ 0.6 0.4 0.3 0.02 11
particle minecraft:spore_blossom_air ~ ~10 ~ 4 1 2 0.01 17
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 0.7 0.56
playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.9 0.78
tellraw @a[scores={novahorror.fear=81..}] {"text":"§8...واقعی نیست...","color":"red"}
title @a[distance=..12] subtitle {"text":"§c...برگرد...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:oak_leaves run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-9 ~19 ~-5 {CustomName:'"§8Crow 147-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-12 ~18 ~4 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 147-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.81
execute if predicate novahorror:is_raining run particle minecraft:spore_blossom_air ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=73..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 1 0.6
# End horror 147 player_low_health
