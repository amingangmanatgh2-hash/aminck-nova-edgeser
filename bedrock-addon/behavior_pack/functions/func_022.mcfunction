# Horror func 22 - diverse real commands, coordinated with mod
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.06
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
scoreboard players add @a[distance=..5] novahorror.dark 1
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.04
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.03
playsound mob.ghast.scream @a ~ ~ ~ 1 0.84
effect @a[distance=..8] weakness 5 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
scoreboard players add @a[distance=..5] novahorror.dark 1
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.35
# End func 22 - fear logic
