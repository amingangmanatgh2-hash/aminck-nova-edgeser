# Horror Bedrock func 40 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=20..39}] darkness 5 0 true
particle minecraft:white_ash ~ ~1 ~ 0.5 0.6 0.4 0.06 7
titleraw @a[scores={novahorror.fear=85..}] title {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
effect @a[scores={novahorror.fear=89..}] nausea 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.9 0.46
playsound mob.ghast.scream @a ~ ~ ~ 0.6 0.52
effect @a[scores={novahorror.fear=51..84}] weakness 2 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.66
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cکمک..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.9 0.63
particle minecraft:soul ~ ~ ~ 1 1 1 0.1 11
# End 40
