#datapack chargé
tellraw @a "Moky §e§l [DONE]"

#timer(secondes)(conditions initiales)
scoreboard objectives add TICK+1 dummy
scoreboard players set Mokyzen TICK+1 1

scoreboard objectives add 1 dummy
scoreboard players set Mokyzen 1 1

scoreboard objectives add 2 dummy
scoreboard players set Mokyzen 2 2

scoreboard objectives add 3 dummy
scoreboard players set Mokyzen 3 3

scoreboard objectives add 10 dummy
scoreboard players set Mokyzen 10 10

scoreboard objectives add 20 dummy
scoreboard players set Mokyzen 20 20

scoreboard objectives add Timer dummy

#Essais
scoreboard objectives remove test
scoreboard objectives add test dummy
scoreboard players set Mokyzen test 5


#Gestion de la gauge de Fury
scoreboard objectives remove hit
scoreboard objectives add hit minecraft.used:stone_sword

scoreboard objectives add FuryDisplay dummy

scoreboard objectives add FuryMaxAmount dummy
scoreboard objectives add FuryMaxAmountDisplay dummy
scoreboard objectives add FuryMinAmount dummy
scoreboard players set Mokyzen FuryMinAmount 0

#capacité avec Fury
scoreboard objectives remove FuryUses
scoreboard objectives add FuryUses minecraft.custom:minecraft.sneak_time

#cooldown
scoreboard objectives add TimerEnabel dummy





#scoreboard objectives add FuryUses minecraft.custom:minecraft.talked_to_villager
#kill @e[type=villager,name="RC"]
#execute at Mokyzen run summon villager ^ ^ ^ {Invulnerable:1b,CustomName:'{"text":"RC"}',CustomNameVisible:1,Silent:1,NoAI:1b}
