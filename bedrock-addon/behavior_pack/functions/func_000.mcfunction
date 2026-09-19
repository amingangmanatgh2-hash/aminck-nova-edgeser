# Horror Bedrock func 0 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=20..38}] wither 3 0 true
particle minecraft:witch ~ ~1 ~ 0.3 0.7 0.3 0.07 3
titleraw @a[scores={novahorror.fear=81..}] title {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
effect @a[scores={novahorror.fear=86..}] slowness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.9 0.66
playsound block.bell.hit @a ~ ~ ~ 0.8 0.98
effect @a[scores={novahorror.fear=62..68}] blindness 4 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.93
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
playsound ambient.cave @a ~ ~ ~ 0.6 0.43
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 15
# End 0
