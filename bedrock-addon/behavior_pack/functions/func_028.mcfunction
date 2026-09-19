# Horror Bedrock func 28 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=16..31}] slowness 3 0 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.7 0.4 0.4 0.07 7
titleraw @a[scores={novahorror.fear=85..}] title {"rawtext":[{"text":"§4خون..."}]}
effect @a[scores={novahorror.fear=83..}] darkness 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.73
playsound ambient.cave @a ~ ~ ~ 0.5 0.76
effect @a[scores={novahorror.fear=58..69}] nausea 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.96
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.6 0.47
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 12
# End 28
