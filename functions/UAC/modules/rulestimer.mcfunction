#Automated Rules Message 10Mins
#(v1.5)No longer needs to be automated cause of the UI
execute @s[scores={rtmtoggle=1}] ~~~ scoreboard players add @s rulestimer 1
execute @s[scores={rulestimer=10000}] ~~~ function UAC/rules
execute @s[scores={rulestimer=10010}] ~~~ scoreboard players reset @s rulestimer

#Adds a tag for the enabled/disabled check
execute @s[scores={rtmtoggle=1}] ~~~ scoreboard players set @s RTM 1
execute @s[scores={rtmtoggle=0}] ~~~ scoreboard players set @s RTM 0
scoreboard players operation @s rtmtoggle = rtmtoggledummy rtmtoggle

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
