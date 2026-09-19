# Horror func 37 - diverse real commands, coordinated with mod
execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:"Crow by Moon"}
playsound block.sculk_shrieker.shriek @a ~ ~ ~ 1 1.07
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.1 10
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.ghast.scream @a ~ ~ ~ 1 0.86
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
playsound mob.wolf.howl @a ~ ~ ~ 0.7 0.6
playsound ambient.cave @a ~ ~ ~ 0.8 0.5
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
playsound mob.ghast.scream @a ~ ~ ~ 1 1.49
tellraw @a[scores={novahorror.fear=60..}] {"rawtext":[{"text":"§cنمی‌تونم نفس بکشم..."}]}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
titleraw @a[scores={novahorror.fear=80..}] title {"rawtext":[{"text":"§4§lاو اینجاست!"}]}
playsound mob.parrot.imitate.ghast @a ~ ~ ~ 0.6 0.8
effect @a[scores={novahorror.fear=20..39}] slowness 3 0 true
# End func 37 - fear logic
