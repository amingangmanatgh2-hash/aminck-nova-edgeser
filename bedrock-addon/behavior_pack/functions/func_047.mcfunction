# Horror func 47 - diverse real commands, coordinated with mod
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
scoreboard players add @a[distance=..5] novahorror.dark 1
particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.02 3
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
effect @a[scores={novahorror.fear=60..79}] blindness 3 0 true
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
particle minecraft:basic_smoke ~ ~5 ~ 2 1 2 0.01 10
execute as @a at @s if block ~ ~-1 ~ air run effect @s darkness 2 0 true
tellraw @a {"rawtext":[{"text":"§7...صدای کلاغ از ماه..."}]}
execute at @a run summon minecraft:bat ~6 ~9 ~-5 {CustomName:"§8Crow 47-14 by Moon",NoGravity:1b}
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.warden.heartbeat @a ~ ~ ~ 1 1.30
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
# End func 47 - fear logic
