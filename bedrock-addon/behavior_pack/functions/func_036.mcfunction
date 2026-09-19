# Horror Bedrock func 36 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=15..49}] darkness 5 0 true
particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.7 0.5 0.3 0.02 4
titleraw @a[scores={novahorror.fear=74..}] title {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=90..}] weakness 3 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.49
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.7 0.49
effect @a[scores={novahorror.fear=60..75}] wither 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.83
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..5] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7صدای پا..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.8 0.42
particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.1 6
# End 36
