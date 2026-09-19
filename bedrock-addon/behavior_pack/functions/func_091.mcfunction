# Horror func 91 - diverse real commands, coordinated with mod
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.26
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.17
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
effect @a[distance=..8] weakness 5 0 true
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
effect @a[distance=..8] weakness 5 0 true
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.25
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
scoreboard players add @a novahorror.fear 1
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.39
# End func 91 - fear logic
