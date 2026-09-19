# Horror Bedrock func 57 - jumpscare - truly diverse
effect @a[scores={novahorror.fear=24..40}] blindness 4 0 true
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.6 0.7 0.01 5
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§4خون..."}]}
effect @a[scores={novahorror.fear=90..}] slowness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.75
playsound mob.ghast.scream @a ~ ~ ~ 0.5 0.41
effect @a[scores={novahorror.fear=65..69}] weakness 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.99
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 5
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8در بسته است..."}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.5 0.53
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 8
tag @a[scores={novahorror.fear=75..}] add novahorror_jumpscare
execute as @a[tag=novahorror_jumpscare] at @s run particle minecraft:basic_smoke ~ ~2 ~ 0.5 0.5 0.5 0.02 5
execute as @a[scores={novahorror.fear=83..}] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
effect @a[scores={novahorror.fear=39..}] weakness 3 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.75
tag @a[scores={novahorror.fear=78..}] add novahorror_enhanced_57
execute as @a[tag=novahorror_enhanced_57] at @s run titleraw @s actionbar {"rawtext":[{"text":"§8در بسته است..."}]}
# End 57 enhanced 22 diverse
