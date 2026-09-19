# Sound rules - central mechanic - sound changes with fear, muffled, heartbeat
execute as @a[scores={novahorror.fear=20..39}] at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 0.4 0.8
execute as @a[scores={novahorror.fear=40..59}] at @s run playsound minecraft:entity.warden.ambient hostile @s ~ ~ ~ 0.5 0.7
execute as @a[scores={novahorror.fear=60..79}] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 0.7 0.6
execute as @a[scores={novahorror.fear=80..}] at @s run playsound minecraft:entity.warden.heartbeat hostile @s ~ ~ ~ 1.0 0.5
execute as @a[scores={novahorror.fear=80..}] at @s run playsound minecraft:entity.warden.roar hostile @s ~ ~ ~ 0.6 0.4
# Muffled sounds when high fear - low pitch
execute as @a[scores={novahorror.fear=70..}] at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 0.6 0.3
execute as @a[scores={novahorror.fear=70..}] at @s run playsound minecraft:block.bell.resonate ambient @s ~ ~ ~ 0.5 0.3
# Whispers based on sanity
execute as @a[scores={novahorror.sanity=..30}] at @s run playsound minecraft:entity.parrot.imitate.ghast ambient @s ~ ~ ~ 0.5 0.8
execute as @a[scores={novahorror.sanity=..20}] at @s run playsound minecraft:ambient.basalt_deltas.mood hostile @s ~ ~ ~ 0.6 0.5
# Footsteps behind when fear high
execute as @a[scores={novahorror.fear=60..}] at @s run playsound minecraft:entity.zombie.step hostile @s ~ ~ ~ 0.4 0.7
execute as @a[scores={novahorror.fear=61..}] at @s run playsound minecraft:ambient.cave hostile @s ~3 ~ ~2 0.6 0.42
execute as @a[scores={novahorror.fear=58..}] at @s run playsound minecraft:entity.ghast.scream hostile @s ~-2 ~ ~5 0.6 0.70
execute as @a[scores={novahorror.fear=35..}] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~-3 ~ ~2 0.6 0.82
execute as @a[scores={novahorror.fear=64..}] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~3 ~ ~0 0.6 0.51
execute as @a[scores={novahorror.fear=36..}] at @s run playsound minecraft:entity.warden.ambient hostile @s ~-4 ~ ~3 0.6 0.88
execute as @a[scores={novahorror.fear=32..}] at @s run playsound minecraft:ambient.cave hostile @s ~2 ~ ~4 0.6 0.92
execute as @a[scores={novahorror.fear=71..}] at @s run playsound minecraft:entity.ghast.scream hostile @s ~-5 ~ ~-3 0.6 0.79
execute as @a[scores={novahorror.fear=81..}] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~1 ~ ~-4 0.6 0.76
execute as @a[scores={novahorror.fear=61..}] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~1 ~ ~1 0.6 0.61
execute as @a[scores={novahorror.fear=67..}] at @s run playsound minecraft:entity.wolf.howl hostile @s ~0 ~ ~5 0.6 0.68
execute as @a[scores={novahorror.fear=62..}] at @s run playsound minecraft:ambient.cave hostile @s ~4 ~ ~-5 0.6 0.92
execute as @a[scores={novahorror.fear=53..}] at @s run playsound minecraft:entity.ghast.scream hostile @s ~4 ~ ~3 0.6 0.79
execute as @a[scores={novahorror.fear=39..}] at @s run playsound minecraft:entity.ghast.scream hostile @s ~5 ~ ~2 0.6 0.78
execute as @a[scores={novahorror.fear=87..}] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~-5 ~ ~-1 0.6 0.64
execute as @a[scores={novahorror.fear=63..}] at @s run playsound minecraft:entity.ender_man.stare hostile @s ~-3 ~ ~-3 0.6 0.53
