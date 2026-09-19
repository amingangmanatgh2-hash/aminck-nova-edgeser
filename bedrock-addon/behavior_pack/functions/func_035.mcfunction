# Horror Bedrock func 35 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=23..40}] darkness 5 0 true
particle minecraft:witch ~ ~1 ~ 0.3 0.7 0.2 0.09 4
titleraw @a[scores={novahorror.fear=83..}] title {"rawtext":[{"text":"§8در بسته است..."}]}
effect @a[scores={novahorror.fear=90..}] blindness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.wolf.howl @a ~ ~ ~ 0.9 0.44
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.6 0.34
effect @a[scores={novahorror.fear=52..86}] wither 4 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.81
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..4] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§8سایه..."}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.74
particle minecraft:ash ~ ~ ~ 1 1 1 0.1 5
# End 35
