# Horror Bedrock func 49 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=22..44}] wither 2 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.6 0.7 0.3 0.09 8
titleraw @a[scores={novahorror.fear=78..}] title {"rawtext":[{"text":"§c...برگرد..."}]}
effect @a[scores={novahorror.fear=86..}] darkness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound block.bell.hit @a ~ ~ ~ 0.7 0.30
playsound mob.warden.heartbeat @a ~ ~ ~ 0.9 0.81
effect @a[scores={novahorror.fear=64..86}] weakness 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.74
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.79
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 8
# End 49
