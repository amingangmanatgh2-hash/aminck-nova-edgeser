# Horror Bedrock func 51 - jumpscare - truly diverse
effect @a[scores={novahorror.fear=14..37}] darkness 2 0 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.3 0.4 0.05 3
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§7مه غلیظ..."}]}
effect @a[scores={novahorror.fear=88..}] blindness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.36
playsound ambient.cave @a ~ ~ ~ 0.7 0.55
effect @a[scores={novahorror.fear=62..75}] wither 2 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.75
particle minecraft:basic_smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§c...برگرد..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.54
particle minecraft:white_ash ~ ~ ~ 1 1 1 0.1 5
tag @a[scores={novahorror.fear=78..}] add novahorror_jumpscare
execute as @a[tag=novahorror_jumpscare] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 51 jumpscare
