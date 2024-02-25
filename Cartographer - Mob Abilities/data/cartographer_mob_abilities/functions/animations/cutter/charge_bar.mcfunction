execute if score @s ability_charge matches 1 run function cartographer_core:helper/entity_popups/create_plate
execute if score @s ability_charge matches 1 on passengers if entity @s[tag=ca.entity_popup,tag=!ca.popup_notice,type=text_display] run function cartographer_core:helper/entity_popups/transform/charge_bar

execute if score @s ability_charge matches 1 on passengers if entity @s[tag=ca.charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊▊▊▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"✂","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊▊▊▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 5 on passengers if entity @s[tag=ca.charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊▊▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"✂","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊▊▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 9 on passengers if entity @s[tag=ca.charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"✂","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 13 on passengers if entity @s[tag=ca.charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"▊","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"✂","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"▊","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
execute if score @s ability_charge matches 17 on passengers if entity @s[tag=ca.charge_bar,type=text_display] run data modify entity @s text set value '[{"text":"{","color":"gray","italic":false,"bold":true},{"text":"","color":"white","italic":false,"bold":false},{"text":"[","color":"gray","italic":false,"bold":true},{"text":"✂","color":"dark_aqua","bold":false,"italic":false},{"text":"]","color":"gray","italic":false,"bold":true},{"text":"","color":"white","italic":false,"bold":false},{"text":"}","color":"gray","italic":false,"bold":true}]'
