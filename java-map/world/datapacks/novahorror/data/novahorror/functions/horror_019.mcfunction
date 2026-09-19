# Horror 019 - Ravenshollow - truly diverse - no repeat >2
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=37..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:blindness 6 0 true
effect give @a[scores={novahorror.fear=45..}] minecraft:darkness 4 0 true
particle minecraft:smoke ~ ~5 ~ 0.5 0.3 0.6 0.03 11
particle minecraft:crimson_spore ~ ~10 ~ 3 1 3 0.01 18
playsound minecraft:entity.soul_sand_valley_mood hostile @a ~ ~ ~ 1.0 1.10
playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 1.0 0.46
tellraw @a[scores={novahorror.fear=54..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..9] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:cobblestone run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~19 ~25 ~-7 {CustomName:'"§8Crow 19-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~11 ~18 ~8 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 19-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.7 0.76
execute if predicate novahorror:is_raining run particle minecraft:witch ~ ~5 ~ 3 1 3 0.02 14
tag @a[scores={novahorror.fear=82..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 1 0.6
# End horror 019
