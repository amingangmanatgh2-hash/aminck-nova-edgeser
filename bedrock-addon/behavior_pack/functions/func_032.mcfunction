# Horror Bedrock func 32 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=20..36}] nausea 3 0 true
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.05 6
titleraw @a[scores={novahorror.fear=70..}] title {"rawtext":[{"text":"§7صدای پا..."}]}
effect @a[scores={novahorror.fear=77..}] weakness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.roar @a ~ ~ ~ 1.0 0.41
playsound ambient.cave @a ~ ~ ~ 0.7 0.34
effect @a[scores={novahorror.fear=65..85}] darkness 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.79
particle minecraft:ash ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..3] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4او می‌بینه..."}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.7 0.75
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.1 10
# End 32
