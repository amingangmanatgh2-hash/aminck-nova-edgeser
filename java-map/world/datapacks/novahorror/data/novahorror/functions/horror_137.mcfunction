# Horror 137 - crow_event - truly diverse
scoreboard players add @a novahorror.fear 3
scoreboard players remove @a[scores={novahorror.fear=58..}] novahorror.sanity 1
effect give @a[distance=..10] minecraft:confusion 6 0 true
effect give @a[scores={novahorror.fear=79..}] minecraft:darkness 4 2 true
particle minecraft:soul_fire_flame_emitter ~ ~2 ~ 0.8 0.8 0.6 0.03 20
particle minecraft:spore_blossom_air ~ ~10 ~ 2 1 2 0.01 20
playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 0.7 0.93
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 0.6 0.92
tellraw @a[scores={novahorror.fear=59..}] {"text":"§8در بسته است...","color":"red"}
title @a[distance=..7] subtitle {"text":"§cنمی‌تونم نفس بکشم...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:stone_bricks run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-19 ~25 ~10 {CustomName:'"§8Crow 137-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~6 ~16 ~-12 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 137-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..3] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.parrot.imitate.ghast hostile @a ~ ~ ~ 0.7 0.79
execute if predicate novahorror:is_raining run particle minecraft:warped_spore ~ ~5 ~ 3 1 3 0.02 13
tag @a[scores={novahorror.fear=82..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 1 0.6
# End horror 137 crow_event
