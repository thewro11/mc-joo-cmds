scoreboard players remove jailSeconds timer 1

execute if score jailSeconds timer matches ..-1 run scoreboard players remove jailMinutes timer 1
execute if score jailSeconds timer matches ..-1 run scoreboard players set jailSeconds timer 59

schedule function thewro:timer/timer_tick 1s replace

execute if score jailMinutes timer matches ..0 if score jailSeconds timer matches ..0 run function thewro:timer/timer_complete

function thewro:timer/timer_bar
