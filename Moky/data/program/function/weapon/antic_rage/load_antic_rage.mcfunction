#Gestion de la gauge de Fury

scoreboard objectives add FuryMaxAmount dummy
scoreboard objectives add FuryMinAmount dummy
scoreboard players set Mokyzen FuryMaxAmount 10
scoreboard players set Mokyzen FuryMinAmount 0

scoreboard objectives remove hit
scoreboard objectives add hit minecraft.used:stone_sword

scoreboard objectives add hit_detection minecraft.used:stone_sword

scoreboard objectives add Fury dummy

scoreboard objectives add SkillEnabel dummy
scoreboard players set Mokyzen SkillEnabel 0

#timer perte stack

scoreboard objectives add TICK dummy
scoreboard players set Mokyzen TICK 0

scoreboard objectives add Timer dummy
scoreboard players set Mokyzen Timer 0

scoreboard objectives add TimerEnabel dummy

#timer Compétence 1
scoreboard objectives add TICK_comp dummy
scoreboard players set Mokyzen TICK_comp 0

scoreboard objectives add Timer_comp dummy
scoreboard players set Mokyzen Timer_comp 0

scoreboard objectives add T_comp dummy

scoreboard objectives add TimerEnabel_comp dummy

scoreboard objectives add Skill_Sound dummy
scoreboard objectives add Skill_SoundPlayed dummy
scoreboard players set Mokyzen Skill_SoundPlayed 0

#Numbers

scoreboard objectives add 0 dummy
scoreboard players set Mokyzen 0 0

scoreboard objectives add 1 dummy
scoreboard players set Mokyzen 1 1

scoreboard objectives add 2 dummy
scoreboard players set Mokyzen 2 2

scoreboard objectives add 3 dummy
scoreboard players set Mokyzen 3 3

scoreboard objectives add 10 dummy
scoreboard players set Mokyzen 10 10

scoreboard objectives add 11 dummy
scoreboard players set Mokyzen 11 11

scoreboard objectives add 20 dummy
scoreboard players set Mokyzen 20 20

scoreboard objectives add 40 dummy
scoreboard players set Mokyzen 40 40

scoreboard objectives add 60 dummy
scoreboard players set Mokyzen 60 60

#datapack chargé
tellraw @a "Moky §e§l [DONE]"

