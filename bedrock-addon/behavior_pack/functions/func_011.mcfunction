# Horror func 11 - diverse real commands, coordinated with mod
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
scoreboard players add @a novahorror.fear 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound mob.ghast.scream @a ~ ~ ~ 1 1.04
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
# End func 11 - fear logic
