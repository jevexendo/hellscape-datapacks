scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 100

function bb:lib/rng

scoreboard players operation $value bbl.rng -= $entropy ca.player_entropy

scoreboard players set $do_chance ca.status_var 0

execute if score $value bbl.rng < $inflict_chance ca.effect_exposed_duration run scoreboard players set $do_chance ca.status_var 1

execute if score $do_chance ca.status_var matches 1.. run scoreboard players operation @s ca.effect_exposed_duration = $inflict ca.effect_exposed_duration
execute if score $do_chance ca.status_var matches 1.. run scoreboard players operation @s ca.effect_exposed_level = $inflict ca.effect_exposed_level
execute if score $do_chance ca.status_var matches 1.. run scoreboard players set $success ca.status_var 1

