# Horror Bedrock func 9 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=17..45}] wither 3 0 true
particle minecraft:ash ~ ~1 ~ 0.4 0.5 0.4 0.07 8
titleraw @a[scores={novahorror.fear=75..}] title {"rawtext":[{"text":"§8سایه..."}]}
effect @a[scores={novahorror.fear=89..}] darkness 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 1.0 0.60
playsound mob.ghast.scream @a ~ ~ ~ 0.8 0.36
effect @a[scores={novahorror.fear=63..70}] slowness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.62
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
playsound ambient.cave @a ~ ~ ~ 0.6 0.53
particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.1 11
execute as @a[scores={novahorror.fear=66..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=41..}] slowness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.80
tag @a[scores={novahorror.fear=75..}] add novahorror_enhanced_9
execute as @a[tag=novahorror_enhanced_9] at @s run titleraw @s actionbar {"rawtext":[{"text":"§4فرار کن!"}]}
# End 9 enhanced 22 diverse
