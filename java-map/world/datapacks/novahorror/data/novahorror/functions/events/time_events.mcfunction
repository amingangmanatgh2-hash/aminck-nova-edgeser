# Time events - night, rain, thunder, full moon - enriched impactful
execute if predicate novahorror:is_night run scoreboard players add @a novahorror.fear 1
execute if predicate novahorror:is_night run particle minecraft:ash ~ ~10 ~ 12 1 12 0.01 8
execute if predicate novahorror:is_night run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 0.5 0.6
execute if predicate novahorror:is_night run effect give @a[scores={novahorror.fear=40..}] minecraft:darkness 4 0 true
execute if predicate novahorror:is_raining run effect give @a minecraft:slowness 2 0 true
execute if predicate novahorror:is_raining run particle minecraft:dripping_obsidian_tear ~ ~5 ~ 3 1 3 0.02 8
execute if predicate novahorror:is_raining run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.6 0.5
execute if predicate novahorror:is_thundering run effect give @a minecraft:blindness 2 0 true
execute if predicate novahorror:is_thundering run playsound minecraft:entity.lightning_bolt.thunder weather @a ~ ~ ~ 1.0 0.6
execute if predicate novahorror:is_full_moon run summon minecraft:bat ~ ~20 ~ {CustomName:'"§8Full Moon Crow"',NoGravity:1b,Tags:["full_moon_crow"]}
execute if predicate novahorror:is_full_moon run playsound minecraft:entity.wolf.howl hostile @a ~ ~ ~ 1.0 0.4
execute if predicate novahorror:is_full_moon as @a at @s run particle minecraft:soul_fire_flame ~ ~10 ~ 5 1 5 0.02 10
execute if predicate novahorror:is_day as @a at @s run effect give @s minecraft:weakness 2 0 true
execute if predicate novahorror:is_day as @a[scores={novahorror.fear=50..}] at @s run tellraw @s {"text":"§7...روز هم امن نیست...","color":"gray"}
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 0.7 0.61
execute if predicate novahorror:is_night as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_full_moon as @a at @s run title @s actionbar {"text":"§7...نمی‌تونی فرار کنی...","color":"dark_red"}
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 0.7 0.87
execute if predicate novahorror:is_night as @a at @s run particle minecraft:dripping_lava ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.parrot.imitate.ghast hostile @s ~ ~ ~ 0.7 0.66
execute if predicate novahorror:is_night as @a at @s run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 0.7 0.58
execute if predicate novahorror:is_night as @a at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_full_moon as @a at @s run title @s actionbar {"text":"§7صدای پا...","color":"dark_red"}
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.skeleton.ambient hostile @s ~ ~ ~ 0.7 0.66
execute if predicate novahorror:is_night as @a at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.portal.ambient hostile @s ~ ~ ~ 0.7 0.46
execute if predicate novahorror:is_night as @a at @s run particle minecraft:dripping_lava ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 0.7 0.89
execute if predicate novahorror:is_night as @a at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_full_moon as @a at @s run title @s actionbar {"text":"§7...هوا سنگین شد...","color":"dark_red"}
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.7 0.61
execute if predicate novahorror:is_night as @a at @s run particle minecraft:crimson_spore ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 0.7 0.98
execute if predicate novahorror:is_night as @a at @s run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.amethyst_block.chime hostile @s ~ ~ ~ 0.7 0.83
execute if predicate novahorror:is_night as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_full_moon as @a at @s run title @s actionbar {"text":"§cقلبم تند میزنه...","color":"dark_red"}
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.7 0.43
execute if predicate novahorror:is_night as @a at @s run particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 0.7 0.53
execute if predicate novahorror:is_night as @a at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 0.7 0.58
execute if predicate novahorror:is_night as @a at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_full_moon as @a at @s run title @s actionbar {"text":"§4§lاو اینجاست!","color":"dark_red"}
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 0.7 0.91
execute if predicate novahorror:is_night as @a at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute if predicate novahorror:is_night as @a at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.7 0.46
execute if predicate novahorror:is_night as @a at @s run particle minecraft:white_ash ~ ~1 ~ 0.5 0.5 0.5 0.02 5
