# Horror func 58 - diverse real commands, coordinated with mod
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
playsound mob.ghast.scream @a ~ ~ ~ 1 1.15
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
scoreboard players add @a novahorror.fear 1
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
scoreboard players add @a novahorror.fear 1
# End func 58 - fear logic
