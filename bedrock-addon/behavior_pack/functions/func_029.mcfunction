# Horror Bedrock func 29 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=21..46}] wither 3 0 true
particle minecraft:witch ~ ~1 ~ 0.8 0.3 0.6 0.08 3
titleraw @a[scores={novahorror.fear=74..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
effect @a[scores={novahorror.fear=77..}] darkness 2 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.77
playsound mob.wolf.howl @a ~ ~ ~ 0.5 0.41
effect @a[scores={novahorror.fear=64..77}] slowness 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.91
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 3
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cقلبم تند میزنه..."}]}
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.6 0.53
particle minecraft:basic_smoke ~ ~ ~ 1 1 1 0.1 9
# End 29
