scoreboard players reset @s mugadget.use
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{is_mugadget:true}] run function mugadget:use/mainhand
execute if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{is_mugadget:true}] run function mugadget:use/offhand