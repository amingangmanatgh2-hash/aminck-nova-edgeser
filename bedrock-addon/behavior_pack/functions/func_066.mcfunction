# Horror Bedrock func 66 - forest - truly diverse
effect @a[scores={novahorror.fear=10..44}] darkness 2 0 true
particle minecraft:soul ~ ~1 ~ 0.7 0.6 0.6 0.07 6
titleraw @a[scores={novahorror.fear=79..}] title {"rawtext":[{"text":"§7...باد نجوا می‌کند..."}]}
effect @a[scores={novahorror.fear=79..}] nausea 4 0 true
scoreboard players add @a novahorror.fear 2
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.warden.heartbeat @a ~ ~ ~ 0.7 0.39
playsound mob.wolf.howl @a ~ ~ ~ 0.8 0.32
effect @a[scores={novahorror.fear=59..76}] blindness 3 0 true
playsound mob.parrot.imitate.warden @a ~ ~ ~ 0.6 0.75
particle minecraft:spore_blossom_air ~ ~1 ~ 0.3 0.5 0.3 0.02 4
scoreboard players add @a[distance=..7] novahorror.dark 1
tellraw @a {"rawtext":[{"text":"§7...نمی‌تونی فرار کنی..."}]}
playsound ambient.cave @a ~ ~ ~ 0.7 0.46
particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.1 11
tag @a[scores={novahorror.fear=65..}] add novahorror_forest
execute as @a[tag=novahorror_forest] at @s run particle minecraft:basic_smoke ~ ~2 ~ 0.5 0.5 0.5 0.02 5
# End 66 forest
