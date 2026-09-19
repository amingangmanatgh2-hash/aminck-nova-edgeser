# Random jumpscare - 4 types
execute if predicate novahorror:rand_0 run function novahorror:jumpscare/type1
execute if predicate novahorror:rand_1 run function novahorror:jumpscare/type2
execute if predicate novahorror:rand_2 run function novahorror:jumpscare/type3
execute if predicate novahorror:rand_3 run function novahorror:jumpscare/type4
scoreboard players set @s novahorror.jumpscare_cooldown 2400
