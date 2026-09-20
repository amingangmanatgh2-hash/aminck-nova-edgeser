# Horror 114 - player_low_health - truly diverse
scoreboard players add @a novahorror.fear 1
scoreboard players remove @a[scores={novahorror.fear=63..}] novahorror.sanity 1
effect give @a[distance=..9] minecraft:nausea 6 1 true
effect give @a[scores={novahorror.fear=76..}] minecraft:confusion 5 2 true
particle minecraft:crimson_spore ~ ~5 ~ 0.6 0.9 1.0 0.07 5
particle minecraft:dripping_obsidian_tear ~ ~10 ~ 5 1 4 0.01 11
playsound minecraft:entity.ghast.scream hostile @a ~ ~ ~ 1.0 0.50
playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 0.6 0.58
tellraw @a[scores={novahorror.fear=77..}] {"text":"§7...باد نجوا می‌کند...","color":"red"}
title @a[distance=..8] subtitle {"text":"§4او می‌بینه...","color":"gray"}
execute as @a at @s if block ~ ~-1 ~ minecraft:oak_leaves run scoreboard players add @s novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ minecraft:air run effect give @s minecraft:darkness 2 0 true
summon minecraft:bat ~-15 ~22 ~13 {CustomName:'"§8Crow 114-13"',NoGravity:1b,Silent:1b}
summon minecraft:armor_stand ~-1 ~21 ~-19 {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'"Crow 114-14"',Tags:["novahorror_crow"]}
execute as @e[type=armor_stand,tag=novahorror_crow,limit=1,sort=random] at @s run particle minecraft:ash ~ ~1 ~ 0.2 0.2 0.2 0.01 3
scoreboard players add @a[distance=..7] novahorror.dark 1
execute if predicate novahorror:is_night run playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 0.7 0.87
execute if predicate novahorror:is_raining run particle minecraft:campfire_cosy_smoke ~ ~5 ~ 3 1 3 0.02 15
tag @a[scores={novahorror.fear=79..}] add novahorror_marked
execute as @a[tag=novahorror_marked] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 1 0.6
execute if predicate novahorror:is_high_fear as @a at @s run particle minecraft:dripping_lava ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute if predicate novahorror:is_in_basement as @a at @s run effect give @s minecraft:mining_fatigue 3 0 true
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 0.6 0.71
summon minecraft:parrot ~10 ~14 ~13 {CustomName:'"§8Raven 114-21"',NoGravity:0b,Tags:["raven_114"]}
title @a[scores={novahorror.fear=55..}] actionbar {"text":"§8...کسی دنبالم میاد...","color":"dark_red"}
# End horror 114 enhanced 25 diverse
