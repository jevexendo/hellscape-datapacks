tag @s add ca.trap_translocating

#data modify entity @s transformation set value [0.4861f,0.0000f,-0.4861f,0.0000f,-0.0000f,0.6875f,0.0000f,0.14125f,0.4861f,0.0000f,0.4861f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]
#data modify entity @s block_state.Name set value "minecraft:tinted_glass"

execute as @e[type=block_display,limit=5,sort=nearest,distance=..1,tag=ca.trap_spawner_side] at @s run ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=ca.trap_spawner,tag=ca.trap_translocating]