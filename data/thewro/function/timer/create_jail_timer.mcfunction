# EXAMPLE:
#   function thewro:timer/create_jail_timer { minutes: 5, seconds: 0 }

$scoreboard players set jailMinutes timer $(minutes)
$scoreboard players set jailSeconds timer $(seconds)

function thewro:timer/timer_bar

$execute if score ZERO constant matches $(minutes) if score ZERO constant matches $(seconds) run function thewro:timer/timer_complete
$execute if score ZERO constant matches $(minutes) if score ZERO constant matches $(seconds) run return 0

schedule function thewro:timer/timer_tick 1s replace
