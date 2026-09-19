# Horror Bedrock func 24 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=18..48}] wither 2 0 true
particle minecraft:sculk_soul ~ ~1 ~ 0.4 0.2 0.5 0.01 3
titleraw @a[scores={novahorror.fear=81..}] title {"rawtext":[{"text":"§cکمک..."}]}
effect @a[scores={novahorror.fear=84..}] weakness 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.8 0.55
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.69
effect @a[scores={novahorror.fear=51..80}] darkness 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.68
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.6 0.42
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 6
# End 24
