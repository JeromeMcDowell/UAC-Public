execute @s[tag=staffstatus] ~~~ scoreboard players set ltmtoggledummy ltmtoggle 1
execute @s[tag=staffstatus] ~~~ scoreboard players operation @a ltmtoggle = ltmtoggledummy ltmtoggle
execute @s[tag=staffstatus] ~~~ scoreboard players set @a LTM 1

#Deny Nonstaff
execute @s[tag=!staffstatus] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute @s[tag=!staffstatus] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=staffstatus] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~
execute @s[tag=staffstatus] ~~~ tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Auto Lag Clear §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
