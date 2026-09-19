# Horror func 53 - diverse real commands, coordinated with mod
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.ghast.scream @a ~ ~ ~ 1 1.40
scoreboard players add @a novahorror.fear 1
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
execute at @a run summon minecraft:bat ~-2 ~11 ~8 {CustomName:"§8Crow 53-5 by Moon",NoGravity:1b}
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.44
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.warden.heartbeat @a ~ ~ ~ 1 0.50
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[scores={novahorror.fear=40..59}] darkness 5 0 true
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
# End func 53 - fear logic
