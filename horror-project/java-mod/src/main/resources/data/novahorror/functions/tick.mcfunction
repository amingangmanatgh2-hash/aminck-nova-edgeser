# Nova Horror - tick function runs every tick
# Fear system via scoreboards

# Initialize scoreboards if not exists
# (run once via load)

# Darkness check - if player in dark < 4 light, increase fear
execute as @a at @s if predicate novahorror:in_dark run scoreboard players add @s novahorror.dark_ticks 1
execute as @a at @s unless predicate novahorror:in_dark run scoreboard players remove @s novahorror.dark_ticks 2
execute as @a if score @s novahorror.dark_ticks matches 80.. run function novahorror:fear/increase

# Fear effects
execute as @a[scores={novahorror.fear=20..39}] run effect give @s minecraft:slowness 3 0 true
execute as @a[scores={novahorror.fear=40..59}] run effect give @s minecraft:darkness 5 0 true
execute as @a[scores={novahorror.fear=60..79}] run function novahorror:fear/medium
execute as @a[scores={novahorror.fear=80..}] run function novahorror:fear/high

# Jumpscare random
execute as @a[scores={novahorror.fear=70..}] at @s if predicate novahorror:jumpscare_chance run function novahorror:jumpscare/random

# Spirit lantern particles
execute as @a[nbt={SelectedItem:{id:"novahorror:spirit_lantern"}}] at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.01 5

# Heart of dread
execute as @a[nbt={Inventory:[{id:"novahorror:heart_of_dread"}]}] at @s run function novahorror:items/heart_tick

# Broken compass actionbar
execute as @a[nbt={SelectedItem:{id:"novahorror:broken_compass"}}] at @s run function novahorror:items/compass_tick
