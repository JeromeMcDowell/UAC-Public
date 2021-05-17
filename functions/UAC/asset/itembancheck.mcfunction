execute @s[tag=!staffstatus] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► You must be staff to use this command!"}]}

execute @s[tag=staffstatus] ~~~ tellraw @s {"rawtext":[{"text":"§¶§c=========Item Ban Status========="}]}

#Checklist for all bannable items
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNA=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bHarming Arrows §7[ §¶§2ALLOWED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNA=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bHarming Arrows §7[ §¶§cBANNED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNM=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bMaps §7[ §¶§2ALLOWED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNM=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bMaps §7[ §¶§cBANNED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNCB=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bCrossbows §7[ §¶§2ALLOWED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNCB=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bCrossbows §7[ §¶§cBANNED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNSB=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bShulkerBox §7[ §¶§2ALLOWED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNSB=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bShulkerBox §7[ §¶§cBANNED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNBQ=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bBook and Quill §7[ §¶§2ALLOWED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNBQ=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bBook and Quill §7[ §¶§cBANNED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNTN=0}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bTNT §7[ §¶§2ALLOWED §7]"}]}
execute @s[tag=staffstatus] ~~~ execute @s[scores={BNTN=1}] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b►§¶§bTNT §7[ §¶§cBANNED §7]"}]}


#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
