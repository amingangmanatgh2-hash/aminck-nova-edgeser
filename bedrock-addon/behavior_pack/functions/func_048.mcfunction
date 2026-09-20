# Horror Bedrock func 48 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=11..44}] blindness 3 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.8 0.3 0.7 0.04 5
titleraw @a[scores={novahorror.fear=71..}] title {"rawtext":[{"text":"§c...برگرد..."}]}
effect @a[scores={novahorror.fear=89..}] darkness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound ambient.cave @a ~ ~ ~ 0.9 0.34
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.9 0.38
effect @a[scores={novahorror.fear=57..72}] slowness 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.88
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8در بسته است..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.71
particle minecraft:basic_smoke ~ ~ ~ 1 1 1 0.1 8
execute as @a[scores={novahorror.fear=68..}] at @s run particle minecraft:white_ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=26..}] weakness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.52
tag @a[scores={novahorror.fear=81..}] add novahorror_enhanced_48
execute as @a[tag=novahorror_enhanced_48] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8سایه..."}]}
# End 48 enhanced 22 diverse
