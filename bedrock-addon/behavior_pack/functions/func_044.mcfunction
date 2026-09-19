# Horror Bedrock func 44 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=14..39}] wither 2 0 true
particle minecraft:soul ~ ~1 ~ 0.8 0.4 0.6 0.06 6
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
effect @a[scores={novahorror.fear=88..}] darkness 4 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 0.7 0.60
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.8 0.64
effect @a[scores={novahorror.fear=55..78}] blindness 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.89
particle minecraft:white_ash ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cکمک..."}]}
playsound block.bell.hit @a ~ ~ ~ 0.8 0.53
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 9
# End 44
