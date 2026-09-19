# Horror Bedrock func 20 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=12..45}] slowness 5 0 true
particle minecraft:soul ~ ~1 ~ 0.7 0.5 0.3 0.09 4
titleraw @a[scores={novahorror.fear=71..}] title {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=84..}] darkness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound ambient.cave @a ~ ~ ~ 0.6 0.54
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.78
effect @a[scores={novahorror.fear=65..88}] nausea 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.96
particle minecraft:white_ash ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.6 0.45
particle minecraft:witch ~ ~ ~ 1 1 1 0.1 14
# End 20
