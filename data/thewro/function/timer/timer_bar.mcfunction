# when minutes is 1 digit while seconds is 2 digits
execute if score jailMinutes timer matches ..9 if score jailSeconds timer matches 10.. run data modify storage thewro:timer jail set value '[\
  {\
    "text": "0",\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "score": {\
      "name": "jailMinutes",\
      "objective": "timer"\
    },\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "text":":",\
    "color":"green",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "score":{\
      "name":"jailSeconds",\
      "objective":"timer"\
    },\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  }\
]'

# when minutes is 2 digits while seconds is 1 digit
execute if score jailMinutes timer matches 10.. if score jailSeconds timer matches ..9 run data modify storage thewro:timer jail set value '[\
  {\
    "score": {\
      "name": "jailMinutes",\
      "objective": "timer"\
    },\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "text":":",\
    "color":"green",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "text": "0",\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "score":{\
      "name":"jailSeconds",\
      "objective":"timer"\
    },\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  }\
]'

# when minutes is 1 digit and seconds is 1 digit
execute if score jailMinutes timer matches ..9 if score jailSeconds timer matches ..9 run data modify storage thewro:timer jail set value '[\
  {\
    "text": "0",\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "score": {\
      "name": "jailMinutes",\
      "objective": "timer"\
    },\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "text":":",\
    "color":"green",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "text": "0",\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "score":{\
      "name":"jailSeconds",\
      "objective":"timer"\
    },\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  }\
]'

# when minutes is 2 digits while seconds is 2 digits
execute if score jailMinutes timer matches 10.. if score jailSeconds timer matches 10.. run data modify storage thewro:timer jail set value '[\
  {\
    "score": {\
      "name": "jailMinutes",\
      "objective": "timer"\
    },\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "text":":",\
    "color":"green",\
    "bold":true,\
    "italic":false\
  },\
  {\
    "score":{\
      "name":"jailSeconds",\
      "objective":"timer"\
    },\
    "color":"yellow",\
    "bold":true,\
    "italic":false\
  }\
]'

title @a actionbar {"storage": "thewro:timer", "nbt": "jail", "interpret": true}

# modify text display if there is any.
function thewro:timer/modify_text_display
