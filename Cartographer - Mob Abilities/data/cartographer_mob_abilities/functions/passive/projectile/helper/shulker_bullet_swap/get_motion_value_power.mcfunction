tp 0000001f-00de-140d-0000-0000000276ef ~ ~ ~ facing entity @p eyes

#execute as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ~ ~ ~ ~ ~-35

execute unless entity @a[distance=..6] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ^ ^ ^6
execute if entity @a[distance=..6] as 0000001f-00de-140d-0000-0000000276ef at @s run tp @s ^ ^ ^3

execute store result score $dx ca.sb_convert run data get entity 0000001f-00de-140d-0000-0000000276ef Pos[0] 1000
execute store result score $dy ca.sb_convert run data get entity 0000001f-00de-140d-0000-0000000276ef Pos[1] 1000
execute store result score $dz ca.sb_convert run data get entity 0000001f-00de-140d-0000-0000000276ef Pos[2] 1000

execute store result score $x ca.sb_convert run data get entity @s Pos[0] 1000
execute store result score $y ca.sb_convert run data get entity @s Pos[1] 1000
execute store result score $z ca.sb_convert run data get entity @s Pos[2] 1000

scoreboard players operation $tx ca.sb_convert = $dx ca.sb_convert
scoreboard players operation $ty ca.sb_convert = $dy ca.sb_convert
scoreboard players operation $tz ca.sb_convert = $dz ca.sb_convert

scoreboard players operation $tx ca.sb_convert -= $x ca.sb_convert
scoreboard players operation $ty ca.sb_convert -= $y ca.sb_convert
scoreboard players operation $tz ca.sb_convert -= $z ca.sb_convert

scoreboard players operation $tx ca.sb_convert /= $4 ca.CONSTANT
scoreboard players operation $tz ca.sb_convert /= $4 ca.CONSTANT

scoreboard players operation $ty ca.sb_convert /= $4 ca.CONSTANT

#execute unless entity @a[distance=..10] run scoreboard players operation $ty ca.sb_convert /= $4 ca.CONSTANT
#execute if entity @a[distance=..10] run scoreboard players operation $ty ca.sb_convert /= $8 ca.CONSTANT

#scoreboard players remove $ty ca.sb_convert 120

tp 0000001f-00de-140d-0000-0000000276ef 4206900 50 4206900

execute if score $ty ca.sb_convert matches ..-800 run scoreboard players add $ty ca.sb_convert 200
execute if score $ty ca.sb_convert matches 1300.. run scoreboard players remove $ty ca.sb_convert 100

data modify storage cartographer_mob_abilities:passive_projectile Projectile.Motion set from entity @s Motion

execute store result storage cartographer_mob_abilities:passive_projectile Projectile.Motion[0] double 0.001 run scoreboard players add $tx ca.sb_convert 0
execute store result storage cartographer_mob_abilities:passive_projectile Projectile.Motion[1] double 0.001 run scoreboard players add $ty ca.sb_convert 0
execute store result storage cartographer_mob_abilities:passive_projectile Projectile.Motion[2] double 0.001 run scoreboard players add $tz ca.sb_convert 0