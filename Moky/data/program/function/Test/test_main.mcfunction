#https://minecraft.tools/fr/
#https://cloudwolfyt.github.io/
#https://www.gamergeeks.net/apps/minecraft/particle-dust-command-generator


#Calcul de la quantité max de Fury utilisable/obtensible
scoreboard players set Mokyzen FuryMaxAmount 50
scoreboard players operation Mokyzen FuryMaxAmountDisplay = Mokyzen FuryMaxAmount
scoreboard players operation Mokyzen FuryMaxAmountDisplay *= Mokyzen 10

#Limite supérieure et inférieure d'incrémentation de la jauge
execute if score Mokyzen hit >= Mokyzen FuryMaxAmount run scoreboard players operation Mokyzen hit = Mokyzen FuryMaxAmount
execute if score Mokyzen hit < Mokyzen FuryMinAmount run scoreboard players operation Mokyzen hit = Mokyzen FuryMinAmount

#Incrémentation de la jauge de Fury
scoreboard players operation Mokyzen FuryDisplay = Mokyzen hit
scoreboard players operation Mokyzen FuryDisplay *= Mokyzen 10

#Compétence 1 avec la jauge de Fury
execute if entity @a[name="Mokyzen", nbt={SelectedItem:{id:"minecraft:stone_sword"}}] if score Mokyzen FuryUses = Mokyzen 1 if score Mokyzen hit >= Mokyzen 2 run execute at Mokyzen at @e[type=! player,type=! item,distance=0..7,type=! villager] run function program:particles
execute if entity @a[name="Mokyzen", nbt={SelectedItem:{id:"minecraft:stone_sword"}}] if score Mokyzen FuryUses = Mokyzen 1 if score Mokyzen hit >= Mokyzen 2 run execute at Mokyzen as @e[type=! player,type=! item,distance=0..7,type=! villager] run damage @s 200 player_attack at ~ ~ ~

#Utilisation de la jauge de Fury
execute if entity @a[name="Mokyzen", nbt={SelectedItem:{id:"minecraft:stone_sword"}}] if score Mokyzen FuryUses = Mokyzen 1 if score Mokyzen hit >= Mokyzen 2 run scoreboard players operation Mokyzen hit -= Mokyzen 2

#Affichage de la quantité de Fury
execute if entity @a[name="Mokyzen", nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run title @a actionbar ["",{"text":"Fury : ","bold":true,"color":"dark_purple"},{"score":{"name":"Mokyzen","objective":"FuryDisplay"},"bold":true,"color":"light_purple"},"/",{"score":{"name":"Mokyzen","objective":"FurryMaxAmountDisplay"},"bold":true,"color":"dark_purple"}]


scoreboard players set Mokyzen FuryUses 0

#Gestion du Cooldown de la compétence 1


#execute at Mokyzen run tp @e[type=villager,name="RC"] ^ ^ ^2 


execute if score Mokyzen FuryUses = Mokyzen 1 run scoreboard players set Mokyzen TimerEnabel 1
execute if score Mokyzen TimerEnabel = Mokyzen 1 run scoreboard objectives remove FuryUses
execute if score Mokyzen TimerEnabel = Mokyzen 1 run scoreboard objectives add TICK dummy
execute if score Mokyzen TimerEnabel = Mokyzen 1 if score Mokyzen Timer = Mokyzen 1 run scoreboard objectives add FuryUses minecraft.custom:minecraft.sneak_time
execute if score Mokyzen Timer = Mokyzen 1 run scoreboard players set Mokyzen TimerEnabel 0
execute if score Mokyzen Timer = Mokyzen 1 run scoreboard objectives remove TICK
