#Limite supérieure et inférieure d'incrémentation de la jauge
execute if score Mokyzen hit >= Mokyzen FuryMaxAmount run scoreboard players operation Mokyzen hit = Mokyzen FuryMaxAmount
execute if score Mokyzen hit < Mokyzen FuryMinAmount run scoreboard players operation Mokyzen hit = Mokyzen FuryMinAmount

#Perte des stacks de Fury
execute if score Mokyzen SkillEnabel matches 0 if score Mokyzen hit_detection matches 0 run scoreboard players set Mokyzen TimerEnabel 1
execute if score Mokyzen hit_detection matches 1 run scoreboard players set Mokyzen TimerEnabel 0

#Affichage de la quantité de Fury
execute if entity @a[name="Mokyzen", nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run title @a actionbar [{"score":{"name":"Mokyzen","objective":"hit"},"bold":false,"color":"#D01BD0"}," ",{"text":"\u2205","bold":false,"color":"#D01BD0"}]

execute if entity @a[name="Mokyzen", nbt={SelectedItem:{id:"minecraft:stone_sword"}}] if score Mokyzen SkillEnabel matches 1 run title @a actionbar [{"text":"\u255a","bold":true,"color":"#D01BD0"},{"text":"\u264a","bold":true,"color":"#7D0D7D"},{"score":{"name":"Mokyzen","objective":"T_comp"},"bold":true,"color":"#D01BD0"},{"text":"\u264a","bold":true,"color":"#7B0A7B"},{"text":"\u255d","bold":true,"color":"#D01BD0"}]

#Compétence 1
execute if score Mokyzen hit matches 10 run scoreboard players set Mokyzen SkillEnabel 1
execute if score Mokyzen hit matches 0..9 run scoreboard players set Mokyzen SkillEnabel 0

execute if score Mokyzen SkillEnabel matches 1 run scoreboard players set Mokyzen TimerEnabel_comp 1
execute if score Mokyzen SkillEnabel matches 0 run scoreboard players set Mokyzen TimerEnabel_comp 0

execute if score Mokyzen SkillEnabel matches 1 if score Mokyzen Skill_SoundPlayed matches 0 run scoreboard players set Mokyzen Skill_Sound 1
execute if score Mokyzen SkillEnabel matches 0 run scoreboard players set Mokyzen Skill_SoundPlayed 0


execute if score Mokyzen hit_detection matches 1 if score Mokyzen SkillEnabel matches 1 run execute at Mokyzen at @e[type=! player,type=! item,distance=0..7,type=! villager] run function program:weapon/antic_rage/fury_particles
execute if score Mokyzen hit_detection matches 1 if score Mokyzen SkillEnabel matches 1 run execute at Mokyzen as @e[type=! player,type=! item,distance=0..7,type=! villager] run damage @s 50 player_attack at ~ ~ ~


execute at Mokyzen if score Mokyzen Skill_Sound matches 1 run playsound entity.ender_dragon.growl ambient Mokyzen
execute at Mokyzen if score Mokyzen Skill_Sound matches 1 run scoreboard players set Mokyzen Skill_SoundPlayed 1


execute if score Mokyzen TICK_comp matches 60 run scoreboard players set Mokyzen hit 0

execute if score Mokyzen Skill_Sound matches 1 run scoreboard players set Mokyzen hit_detection 0

scoreboard players set Mokyzen Skill_Sound 0

scoreboard players set Mokyzen hit_detection 0

