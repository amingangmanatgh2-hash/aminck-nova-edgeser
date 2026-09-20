# Horror Bedrock func 47 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=20..33}] wither 3 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.4 0.3 0.6 0.09 6
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§7مه غلیظ..."}]}
effect @a[scores={novahorror.fear=79..}] weakness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.8 0.54
playsound block.bell.hit @a ~ ~ ~ 0.8 0.94
effect @a[scores={novahorror.fear=55..83}] blindness 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.72
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7صدای پا..."}]}
playsound ambient.cave @a ~ ~ ~ 0.8 0.65
particle minecraft:basic_smoke ~ ~ ~ 1 1 1 0.1 10
execute as @a[scores={novahorror.fear=85..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=46..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.51
tag @a[scores={novahorror.fear=80..}] add novahorror_enhanced_47
execute as @a[tag=novahorror_enhanced_47] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
# End 47 enhanced 22 diverse
