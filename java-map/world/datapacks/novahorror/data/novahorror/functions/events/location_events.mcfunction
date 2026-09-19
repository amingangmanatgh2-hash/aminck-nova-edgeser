# Location events - mansion, basement, forest, village
execute as @a[x=0,y=70,z=0,distance=..20] at @s run scoreboard players add @s novahorror.fear 1
execute as @a[x=0,y=70,z=0,distance=..20] at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.02 5
execute as @a[x=0,y=70,z=0,distance=..20] at @s run playsound minecraft:block.bell.resonate ambient @s ~ ~ ~ 0.7 0.5
execute as @a[y=..50] at @s run effect give @s minecraft:darkness 2 0 true
execute as @a[y=..50] at @s run particle minecraft:soul ~ ~1 ~ 0.3 0.3 0.3 0.01 3
execute as @a[y=..50] at @s run scoreboard players add @s novahorror.dark 1
execute as @a[x=100,y=64,z=100,distance=..30] at @s run playsound minecraft:entity.wolf.howl hostile @s ~ ~ ~ 0.8 0.6
execute as @a[x=100,y=64,z=100,distance=..30] at @s run particle minecraft:white_ash ~ ~5 ~ 3 1 3 0.01 10
execute as @a[x=-50,y=64,z=-50,distance=..25] at @s run effect give @s minecraft:slowness 3 0 true
execute as @a[x=-50,y=64,z=-50,distance=..25] at @s run tellraw @s {"text":"§7...روستای متروکه...","color":"gray"}
execute as @a[scores={novahorror.fear=25..}] at @s if block ~ ~-1 ~ minecraft:soul_sand run particle minecraft:white_ash ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @a[scores={novahorror.fear=58..}] at @s if block ~ ~-1 ~ minecraft:soul_sand run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @a[scores={novahorror.fear=66..}] at @s if block ~ ~-1 ~ minecraft:moss_block run particle minecraft:note ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @a[scores={novahorror.fear=32..}] at @s if block ~ ~-1 ~ minecraft:gravel run particle minecraft:crimson_spore ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @a[scores={novahorror.fear=48..}] at @s if block ~ ~-1 ~ minecraft:gravel run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @a[scores={novahorror.fear=37..}] at @s if block ~ ~-1 ~ minecraft:moss_block run particle minecraft:dripping_obsidian_tear ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @a[scores={novahorror.fear=65..}] at @s if block ~ ~-1 ~ minecraft:grass_block run particle minecraft:witch ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @a[scores={novahorror.fear=53..}] at @s if block ~ ~-1 ~ minecraft:gravel run particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @a[scores={novahorror.fear=30..}] at @s if block ~ ~-1 ~ minecraft:moss_block run particle minecraft:soul_fire_flame_emitter ~ ~1 ~ 0.3 0.3 0.3 0.02 3
execute as @a[scores={novahorror.fear=26..}] at @s if block ~ ~-1 ~ minecraft:moss_block run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.02 3
