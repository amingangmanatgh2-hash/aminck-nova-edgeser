# Horror Bedrock func 31 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=14..35}] weakness 4 0 true
particle minecraft:ash ~ ~1 ~ 0.7 0.5 0.7 0.01 3
titleraw @a[scores={novahorror.fear=71..}] title {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
effect @a[scores={novahorror.fear=83..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 0.9 0.51
playsound ambient.cave @a ~ ~ ~ 0.8 0.65
effect @a[scores={novahorror.fear=59..86}] nausea 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.70
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8سایه..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.68
particle minecraft:soul ~ ~ ~ 1 1 1 0.1 7
# End 31
