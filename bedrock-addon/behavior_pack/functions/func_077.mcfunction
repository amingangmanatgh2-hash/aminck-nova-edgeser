# Horror Bedrock func 77 - jumpscare - truly diverse
effect @a[scores={novahorror.fear=25..40}] nausea 2 0 true
particle minecraft:ash ~ ~1 ~ 0.8 0.7 0.3 0.02 8
titleraw @a[scores={novahorror.fear=82..}] title {"rawtext":[{"text":"§4او می‌بینه..."}]}
effect @a[scores={novahorror.fear=81..}] blindness 2 0 true
scoreboard players add @a novahorror.fear 1
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ender_dragon.growl @a ~ ~ ~ 0.8 0.78
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.8 0.54
effect @a[scores={novahorror.fear=60..67}] slowness 4 0 true
playsound mob.parrot.imitate.ender_dragon @a ~ ~ ~ 0.6 0.97
particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.warden.heartbeat @a ~ ~ ~ 0.9 0.52
particle minecraft:basic_smoke ~ ~ ~ 1 1 1 0.1 8
tag @a[scores={novahorror.fear=71..}] add novahorror_jumpscare
execute as @a[tag=novahorror_jumpscare] at @s run particle minecraft:ash ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 77 jumpscare
