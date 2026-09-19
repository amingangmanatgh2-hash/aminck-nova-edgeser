execute store result score @s novahorror.fear run data get entity @s Pos[0]
# Show distance to mansion 0,0
tellraw @s {"text":"","extra":[{"text":"فاصله تا عمارت: ","color":"gray"},{"score":{"name":"@s","objective":"novahorror.fear"},"color":"dark_red"},{"text":" بلاک","color":"gray"}]}
