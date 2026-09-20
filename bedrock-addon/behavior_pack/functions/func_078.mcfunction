# Horror Bedrock func 78 - rain - truly diverse
effect @a[scores={novahorror.fear=21..39}] nausea 2 0 true
particle minecraft:ash ~ ~1 ~ 0.6 0.5 0.6 0.06 8
titleraw @a[scores={novahorror.fear=82..}] title {"rawtext":[{"text":"§5...زمان برگشت..."}]}
effect @a[scores={novahorror.fear=80..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.6 0.79
playsound ambient.cave @a ~ ~ ~ 0.8 0.69
effect @a[scores={novahorror.fear=56..84}] blindness 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.91
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8...کسی دنبالم میاد..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.8 0.51
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 10
tag @a[scores={novahorror.fear=74..}] add novahorror_rain
execute as @a[tag=novahorror_rain] at @s run particle minecraft:campfire_cosy_smoke ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=72..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=28..}] slowness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.60
tag @a[scores={novahorror.fear=82..}] add novahorror_enhanced_78
execute as @a[tag=novahorror_enhanced_78] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
# End 78 enhanced 22 diverse
