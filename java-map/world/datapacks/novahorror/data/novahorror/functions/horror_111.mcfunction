# Horror 111 - jumpscare - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=51..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:hunger 5 1 true
effect give @a[scores={novahorror.fear=47..}] minecraft:mining_fatigue 8 1 true
particle minecraft:soul_fire_flame_emitter ~ ~5 ~ 0.9 1.0 0.9 0.02 16
particle minecraft:witch ~ ~10 ~ 4 1 2 0.01 20
playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 1.1 1.03
playsound minecraft:block.sculk_sensor.clicking ambient @a ~ ~ ~ 0.9 1.02
tellraw @a[scores={novahorror.fear=76..}] {"text":"§cکمک...","color":"red"}
title @a[distance=..10] subtitle {"text":"§7مه غلیظ...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:moss_block run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-13 ~15 ~-5 {CustomName:'"§8Crow 111-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~13 ~22 ~-10 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 111-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..4] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.51
execute if predicate novahorror:is_raining run particle minecraft:ash ~ ~5 ~ 3 1 3 0.02 9
tag @a[scores={novahorror.fear=71..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 1 0.6
# End horror 111 jumpscare
