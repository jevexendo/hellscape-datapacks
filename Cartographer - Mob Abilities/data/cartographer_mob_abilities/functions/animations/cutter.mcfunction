scoreboard players add @s ability_charge 1

execute unless score $gl_ab_ani ca.gamerule matches 1 run function cartographer_mob_abilities:animations/cutter/charge_bar

execute if score @s ability_charge matches 1 run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute if score @s ability_charge matches 1 unless score @s ca.cutter_side matches 1.. run function cartographer_mob_abilities:animations/cutter/set_side

execute if score @s ability_charge matches 1 unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute if score @s ability_charge matches 1 run playsound minecraft:entity.iron_golem.hurt hostile @a[distance=..16] ~ ~ ~ 5 1.5
execute if score @s ability_charge matches 8 run playsound minecraft:entity.iron_golem.hurt hostile @a[distance=..16] ~ ~ ~ 5 1.75
execute if score @s ability_charge matches 15 run playsound minecraft:entity.iron_golem.hurt hostile @a[distance=..16] ~ ~ ~ 5 2


execute if score @s ability_charge matches 1 unless score $gl_ab_ani ca.gamerule matches 2 unless entity @s[tag=ca.no_glowing] run effect give @s glowing 1 0 true

execute if score @s ability_charge matches 1 run data modify entity @s NoAI set value 1b

execute if score @s ability_charge matches 1 run tp @s ~ ~ ~ facing entity @p feet

scoreboard players set @s ca.mob_move_mode 1
scoreboard players set @s ca.mob_move_time 32

execute if score @s ability_charge matches 1 if score @s ca.cutter_side matches 1 facing entity @p feet rotated ~ 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/cutter/warn
execute if score @s ability_charge matches 8 if score @s ca.cutter_side matches 1 rotated ~-22.5 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/cutter/warn
execute if score @s ability_charge matches 15 if score @s ca.cutter_side matches 1 rotated ~-45 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/cutter/warn

execute if score @s ability_charge matches 1 if score @s ca.cutter_side matches 2 facing entity @p feet rotated ~ 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/cutter/warn
execute if score @s ability_charge matches 8 if score @s ca.cutter_side matches 2 rotated ~22.5 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/cutter/warn
execute if score @s ability_charge matches 15 if score @s ca.cutter_side matches 2 rotated ~45 0 positioned ~ ~0.5 ~ run function cartographer_mob_abilities:animations/cutter/warn


function cartographer_mob_abilities:loop/tick/animation

execute if score @s ability_charge matches 20.. run function cartographer_mob_abilities:abilities/cutter
