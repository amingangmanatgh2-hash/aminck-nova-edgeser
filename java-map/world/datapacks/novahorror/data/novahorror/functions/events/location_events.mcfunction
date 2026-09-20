# Location events - mansion, basement, forest, village, attic, tunnels - enriched impactful
# Mansion core 0,70,0 - heart of horror
execute as @a[x=0,y=70,z=0,distance=..15] at @s run scoreboard players add @s novahorror.fear 1
execute as @a[x=0,y=70,z=0,distance=..15] at @s run particle minecraft:ash ~ ~1 ~ 0.6 0.6 0.6 0.03 8
execute as @a[x=0,y=70,z=0,distance=..15] at @s run playsound minecraft:block.bell.resonate ambient @s ~ ~ ~ 0.7 0.5
execute as @a[x=0,y=70,z=0,distance=..15] at @s run effect give @s minecraft:darkness 3 0 true
execute as @a[x=0,y=70,z=0,distance=..15] at @s run title @s actionbar {"text":"§4عمارت... قلب تپنده...","color":"dark_red"}
# Basement y..50 - claustrophobia, darkness, soul
execute as @a[y=..50] at @s run effect give @s minecraft:darkness 2 0 true
execute as @a[y=..50] at @s run particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0.02 5
execute as @a[y=..50] at @s run scoreboard players add @s novahorror.dark 1
execute as @a[y=..50] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.4
execute as @a[y=..50,scores={novahorror.fear=30..}] at @s run effect give @s minecraft:slowness 3 0 true
execute as @a[y=..50,scores={novahorror.fear=50..}] at @s run tellraw @s {"text":"§7...زیرزمین... نفس کشیدن سخته...","color":"gray"}
execute as @a[y=..50] at @s if block ~ ~-1 ~ minecraft:soul_sand run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0.02 4
# Attic y 80.. - watcher, white ash, stare
execute as @a[y=80..] at @s run particle minecraft:white_ash ~ ~1 ~ 1 1 1 0.01 15
execute as @a[y=80..] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~ ~ ~ 0.6 0.5
execute as @a[y=80..] at @s run effect give @s minecraft:blindness 2 0 true
execute as @a[y=80..] at @s run scoreboard players add @s novahorror.fear 1
execute as @a[y=80..] at @s run title @s actionbar {"text":"§7...از بالا نگاهت می‌کنه...","color":"gray"}
# Forest 90..110 - wolves, fog, moss
execute as @a[x=90..110,z=90..110] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 0.9 0.6
execute as @a[x=90..110,z=90..110] at @s run particle minecraft:white_ash ~ ~5 ~ 4 1 4 0.01 12
execute as @a[x=90..110,z=90..110] at @s run effect give @s minecraft:slowness 2 0 true
execute as @a[x=90..110,z=90..110] at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 0.5 0.5 0.5 0.02 6
execute as @a[x=90..110,z=90..110] at @s if block ~ ~-1 ~ minecraft:grass_block run particle minecraft:composter ~ ~1 ~ 0.3 0.3 0.3 0.02 3
# Village -60..-40 abandoned
execute as @a[x=-60..-40,z=-60..-40] at @s run effect give @s minecraft:weakness 3 0 true
execute as @a[x=-60..-40,z=-60..-40] at @s run tellraw @s {"text":"§7...روستای متروکه... همه رفتن...","color":"gray"}
execute as @a[x=-60..-40,z=-60..-40] at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 0.6 0.7
execute as @a[x=-60..-40,z=-60..-40] at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.02 5
# Secret tunnels 20,60,20 area
execute as @a[x=15..30,y=55..65,z=15..30] at @s run particle minecraft:smoke ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[x=15..30,y=55..65,z=15..30] at @s run effect give @s minecraft:darkness 4 0 true
execute as @a[x=15..30,y=55..65,z=15..30] at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 0.7 0.5
execute as @a[x=15..30,y=55..65,z=15..30] at @s run scoreboard players add @s novahorror.fear 1
execute as @a[scores={novahorror.fear=69..}] at @s if block ~ ~-1 ~ minecraft:moss_block run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=30..}] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.95
execute as @a[scores={novahorror.fear=80..}] at @s if block ~ ~-1 ~ minecraft:deepslate run particle minecraft:soul ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=72..}] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.46
execute as @a[scores={novahorror.fear=42..}] at @s if block ~ ~-1 ~ minecraft:soul_sand run particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=31..}] at @s run playsound minecraft:ambient.cave hostile @s ~ ~ ~ 0.6 0.61
execute as @a[scores={novahorror.fear=59..}] at @s if block ~ ~-1 ~ minecraft:moss_block run particle minecraft:portal ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=39..}] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.51
execute as @a[scores={novahorror.fear=27..}] at @s if block ~ ~-1 ~ minecraft:grass_block run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=61..}] at @s run playsound minecraft:block.sculk_sensor.clicking hostile @s ~ ~ ~ 0.6 0.44
execute as @a[scores={novahorror.fear=54..}] at @s if block ~ ~-1 ~ minecraft:moss_block run particle minecraft:sculk_soul ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=68..}] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.71
execute as @a[scores={novahorror.fear=22..}] at @s if block ~ ~-1 ~ minecraft:gravel run particle minecraft:composter ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=34..}] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.69
execute as @a[scores={novahorror.fear=42..}] at @s if block ~ ~-1 ~ minecraft:gravel run particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=71..}] at @s run playsound minecraft:entity.soul_sand_valley_mood hostile @s ~ ~ ~ 0.6 0.67
execute as @a[scores={novahorror.fear=53..}] at @s if block ~ ~-1 ~ minecraft:blackstone run particle minecraft:ash ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=90..}] at @s run playsound minecraft:block.portal.ambient hostile @s ~ ~ ~ 0.6 0.44
execute as @a[scores={novahorror.fear=41..}] at @s if block ~ ~-1 ~ minecraft:soul_sand run particle minecraft:dripping_lava ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=72..}] at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 0.6 0.50
execute as @a[scores={novahorror.fear=24..}] at @s if block ~ ~-1 ~ minecraft:deepslate run particle minecraft:dripping_lava ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=40..}] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.6 0.73
execute as @a[scores={novahorror.fear=29..}] at @s if block ~ ~-1 ~ minecraft:grass_block run particle minecraft:spore_blossom_air ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=79..}] at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 0.6 0.97
execute as @a[scores={novahorror.fear=29..}] at @s if block ~ ~-1 ~ minecraft:blackstone run particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=59..}] at @s run playsound minecraft:block.sculk_shrieker.shriek hostile @s ~ ~ ~ 0.6 0.65
execute as @a[scores={novahorror.fear=62..}] at @s if block ~ ~-1 ~ minecraft:grass_block run particle minecraft:crimson_spore ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=47..}] at @s run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 0.6 0.58
execute as @a[scores={novahorror.fear=74..}] at @s if block ~ ~-1 ~ minecraft:soul_sand run particle minecraft:portal ~ ~1 ~ 0.4 0.4 0.4 0.02 4
execute as @a[scores={novahorror.fear=32..}] at @s run playsound minecraft:entity.zombie.ambient hostile @s ~ ~ ~ 0.6 0.86
