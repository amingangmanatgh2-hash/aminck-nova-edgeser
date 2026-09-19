# Horror Bedrock func 37 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=11..47}] darkness 3 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.3 0.4 0.09 6
titleraw @a[scores={novahorror.fear=73..}] title {"rawtext":[{"text":"§4فرار کن!"}]}
effect @a[scores={novahorror.fear=81..}] slowness 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.56
playsound mob.warden.heartbeat @a ~ ~ ~ 0.9 0.62
effect @a[scores={novahorror.fear=63..80}] nausea 4 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.82
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.73
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.1 8
# End 37
