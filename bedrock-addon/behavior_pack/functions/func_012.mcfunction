# Horror Bedrock func 12 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=19..30}] blindness 3 0 true
particle minecraft:ash ~ ~1 ~ 0.4 0.8 0.5 0.03 8
titleraw @a[scores={novahorror.fear=85..}] title {"rawtext":[{"text":"§8سایه..."}]}
effect @a[scores={novahorror.fear=78..}] slowness 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.8 0.52
playsound ambient.cave @a ~ ~ ~ 0.6 0.34
effect @a[scores={novahorror.fear=65..69}] wither 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.80
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 0.6 0.63
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 9
execute as @a[scores={novahorror.fear=78..}] at @s run particle minecraft:soul ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=46..}] slowness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.44
tag @a[scores={novahorror.fear=74..}] add novahorror_enhanced_12
execute as @a[tag=novahorror_enhanced_12] at @s run titleraw @s actionbar {"rawtext":[{"text":"§cکمک..."}]}
# End 12 enhanced 22 diverse
