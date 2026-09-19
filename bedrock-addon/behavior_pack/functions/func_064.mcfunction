# Horror func 64 - diverse real commands, coordinated with mod
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.21
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @a run summon minecraft:bat ~-6 ~9 ~-4 {CustomName:"§8Crow 64-5 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound mob.ghast.scream @a ~ ~ ~ 1 0.41
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound mob.ghast.scream @a ~ ~ ~ 1 1.46
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
# End func 64 - fear logic
