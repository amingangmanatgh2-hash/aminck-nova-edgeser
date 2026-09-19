# Horror Bedrock func 73 - whisper - truly diverse
effect @a[scores={novahorror.fear=24..31}] blindness 3 0 true
particle minecraft:spore_blossom_air ~ ~1 ~ 0.2 0.6 0.8 0.01 8
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§5...زمان برگشت..."}]}
effect @a[scores={novahorror.fear=82..}] wither 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 0.6 0.45
playsound block.bell.hit @a ~ ~ ~ 0.9 0.50
effect @a[scores={novahorror.fear=59..67}] darkness 3 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.81
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7چرا تنها شدم؟"}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.8 0.67
particle minecraft:witch ~ ~ ~ 1 1 1 0.1 11
tag @a[scores={novahorror.fear=73..}] add novahorror_whisper
execute as @a[tag=novahorror_whisper] at @s run particle minecraft:basic_smoke ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 73 whisper
