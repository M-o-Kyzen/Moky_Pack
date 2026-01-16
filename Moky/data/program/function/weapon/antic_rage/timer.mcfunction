#timer perte de Stack
execute if score Mokyzen TimerEnabel matches 1 run scoreboard players operation Mokyzen TICK += Mokyzen 1
execute if score Mokyzen TimerEnabel matches 0 run scoreboard players operation Mokyzen TICK = Mokyzen 0

execute if score Mokyzen TICK matches 20 run scoreboard players operation Mokyzen hit -= Mokyzen 1
execute if score Mokyzen TICK matches 20 run scoreboard players set Mokyzen TICK 0

#timer Compétence 1
execute if score Mokyzen TimerEnabel_comp matches 1 run scoreboard players operation Mokyzen TICK_comp += Mokyzen 1
execute if score Mokyzen TimerEnabel_comp matches 0 run scoreboard players operation Mokyzen TICK_comp = Mokyzen 0

execute if score Mokyzen TICK_comp <= Mokyzen 60 run scoreboard players set Mokyzen T_comp 1
execute if score Mokyzen TICK_comp <= Mokyzen 40 run scoreboard players set Mokyzen T_comp 2
execute if score Mokyzen TICK_comp <= Mokyzen 20 run scoreboard players set Mokyzen T_comp 3


#Convertion en secondes
scoreboard players operation Mokyzen Timer = Mokyzen TICK
scoreboard players operation Mokyzen Timer /= Mokyzen 20