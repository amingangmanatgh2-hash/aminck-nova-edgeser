# Setup command blocks with precise commands - coordinated with mod
# This function is called on load to set commands for all command blocks in mansion
data merge block 39 80 20 {Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b, TrackOutput:0b}
setblock 39 80 20 minecraft:command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:dark_oak_planks run function novahorror:horror_000", auto:1b}
data merge block -39 67 22 {Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b, TrackOutput:0b}
setblock -39 67 22 minecraft:command_block{Command:"playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 1 0.5", auto:1b}
data merge block -10 66 25 {Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b, TrackOutput:0b}
setblock -10 66 25 minecraft:command_block{Command:"execute at @a run summon minecraft:bat ~ ~10 ~10 {CustomName:'\"§8Crow by Moon\"',NoGravity:1b}", auto:1b}
data merge block 25 72 12 {Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b, TrackOutput:0b}
setblock 25 72 12 minecraft:command_block{Command:"title @a title {\"text\":\"به عمارت خوش آمدی...\",\"color\":\"dark_red\"}", auto:1b}
data merge block 28 70 -9 {Command:"effect give @a minecraft:darkness 5 0 true", auto:1b, TrackOutput:0b}
setblock 28 70 -9 minecraft:command_block{Command:"effect give @a minecraft:darkness 5 0 true", auto:1b}
data merge block -19 74 14 {Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b, TrackOutput:0b}
setblock -19 74 14 minecraft:command_block{Command:"scoreboard objectives add novahorror.fear dummy \"ترس\"", auto:1b}
data merge block 36 79 8 {Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b, TrackOutput:0b}
setblock 36 79 8 minecraft:command_block{Command:"execute as @a at @s run function novahorror:events/night_crows", auto:1b}
data merge block -38 66 24 {Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b, TrackOutput:0b}
setblock -38 66 24 minecraft:command_block{Command:"playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.3", auto:1b}
data merge block -22 66 27 {Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b, TrackOutput:0b}
setblock -22 66 27 minecraft:command_block{Command:"summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,CustomName:'\"§4The Shade\"'}", auto:1b}
data merge block -3 78 14 {Command:"gamerule doDaylightCycle false", auto:1b, TrackOutput:0b}
setblock -3 78 14 minecraft:command_block{Command:"gamerule doDaylightCycle false", auto:1b}
data merge block 13 71 -3 {Command:"time set midnight", auto:1b, TrackOutput:0b}
setblock 13 71 -3 minecraft:command_block{Command:"time set midnight", auto:1b}
data merge block -12 72 13 {Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b, TrackOutput:0b}
setblock -12 72 13 minecraft:command_block{Command:"execute as @a at @s if score @s novahorror.fear matches 70.. run function novahorror:horror_001", auto:1b}
data merge block 20 74 13 {Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b, TrackOutput:0b}
setblock 20 74 13 minecraft:command_block{Command:"particle minecraft:ash ~ ~1 ~ 1 1 1 0.1 20", auto:1b}
data merge block -3 72 15 {Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b, TrackOutput:0b}
setblock -3 72 15 minecraft:command_block{Command:"playsound minecraft:entity.parrot.imitate.ghast ambient @a ~ ~ ~ 0.8 0.6", auto:1b}
data merge block 32 78 -3 {Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b, TrackOutput:0b}
setblock 32 78 -3 minecraft:command_block{Command:"execute at @a run summon minecraft:armor_stand ~5 ~10 ~ {Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'\"Crow by Moon\"'}", auto:1b}
