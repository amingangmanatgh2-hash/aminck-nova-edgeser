# Horror Bedrock func 65 - low_health - truly diverse
effect @a[scores={novahorror.fear=17..48}] darkness 3 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.8 0.6 0.4 0.09 4
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
effect @a[scores={novahorror.fear=80..}] slowness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.8 0.55
playsound ambient.cave @a ~ ~ ~ 0.9 0.39
effect @a[scores={novahorror.fear=65..72}] weakness 3 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.80
particle minecraft:white_ash ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8...واقعی نیست..."}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.42
particle minecraft:basic_smoke ~ ~ ~ 1 1 1 0.1 11
tag @a[scores={novahorror.fear=63..}] add novahorror_low_health
execute as @a[tag=novahorror_low_health] at @s run particle minecraft:basic_smoke ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=77..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=34..}] weakness 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.7 0.90
tag @a[scores={novahorror.fear=89..}] add novahorror_enhanced_65
execute as @a[tag=novahorror_enhanced_65] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8سایه..."}]}
# End 65 enhanced 22 diverse
