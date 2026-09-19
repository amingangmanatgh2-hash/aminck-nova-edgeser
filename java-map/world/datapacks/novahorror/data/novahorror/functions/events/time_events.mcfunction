# Time events - night, rain, full moon
execute if predicate novahorror:is_night run scoreboard players add @a novahorror.fear 1
execute if predicate novahorror:is_night run particle minecraft:ash ~ ~10 ~ 10 1 10 0.01 5
execute if predicate novahorror:is_night run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.5 0.6
execute if predicate novahorror:is_raining run effect give @a minecraft:slowness 2 0 true
execute if predicate novahorror:is_raining run particle minecraft:dripping_obsidian_tear ~ ~5 ~ 2 1 2 0.02 5
execute if predicate novahorror:is_full_moon run summon minecraft:bat ~ ~20 ~ {CustomName:'"§8Full Moon Crow"',NoGravity:1b}
execute if predicate novahorror:is_full_moon run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 1.0 0.4
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 0.7 0.80
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 0.7 0.98
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 0.7 0.94
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 0.7 0.94
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 0.7 0.48
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 0.7 0.75
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 0.7 0.99
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.7 0.94
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 0.7 0.62
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 0.7 0.90
