# Horror Bedrock func 33 - truly diverse - no exact repeat
effect @a[scores={novahorror.fear=14..40}] blindness 5 0 true
particle minecraft:soul ~ ~1 ~ 0.5 0.3 0.7 0.03 5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4او می‌بینه..."}]}
effect @a[scores={novahorror.fear=80..}] slowness 3 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound ambient.cave @a ~ ~ ~ 0.8 0.55
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.8 0.64
effect @a[scores={novahorror.fear=59..81}] weakness 2 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.73
particle minecraft:sculk_soul ~ ~1 ~ 0.3 0.5 0.3 0.02 2
scoreboard players add @a[distance=..6] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§cکمک..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.72
particle minecraft:ash ~ ~ ~ 1 1 1 0.1 15
# End 33
