effect clear @s invisibility

playsound minecraft:entity.player.attack.sweep player @a[distance=..12] ~ ~ ~ 1 1.5
playsound minecraft:block.anvil.land player @a[distance=..12] ~ ~ ~ 0.35 2
playsound minecraft:entity.illusioner.mirror_move player @a[distance=..12] ~ ~ ~ 0.5 0.75

particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.05 10 normal

tag @s remove ca.stealthed