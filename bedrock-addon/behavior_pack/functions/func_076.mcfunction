# Horror func 76 - diverse real commands, coordinated with mod
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.06
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 0.41
effect @a[distance=..8] weakness 5 0 true
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.31
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute at @a run summon minecraft:bat ~-10 ~12 ~7 {CustomName:"§8Crow 76-16 by Moon",NoGravity:1b}
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
effect @a[scores={novahorror.fear=80..}] wither 3 0 true
execute as @a at @s if block ~ ~-1 ~ grass run scoreboard players add @s novahorror.fear 1
# End func 76 - fear logic
