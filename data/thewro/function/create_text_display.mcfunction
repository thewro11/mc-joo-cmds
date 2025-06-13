# EXAMPLE:
#   function thewro:timer/create_text_display { x: 0, y: 0, z: 0 }

$summon minecraft:text_display $(x) $(y) $(z) {Tags:["jailTimer"], alignment: "center"}
function thewro:timer/modify_text_display
