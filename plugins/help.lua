
do

function run(msg, matches)
        return "Help comments for #Extreme\n----\n1. #Hammer\n#ban\n#banall\n#block\n2.#secret\n#lock [sticker|gif|links|webpage|contacts|emoji|photos|inline|bots|spam]\n#clean [deleted| modlist| silentlist]\n#del [number| reply]\n!setflood [number] {5/20}\n!mute [all | (set time)\nExample: !mute all 8\n!silent [reply | username | id]\n!silentlist\n----\n3.#Group_Control\n!setname\n!setphoto\n!link\n!linkpv\n!newlink\n----\n!promote\n!demote\n!setadmin\n!remadmin\n!id\n------\n4.#BadWords\n!addword {text}\n!delword {text}\n!badword\n5.#personal \n!bot \n!me\nMy [number|id|link|username]\n!plist\n------\n6.#Group_Settings\n#info\n#bots\n#admins\n#kicked\n#who\n#settings\n#rules\n7.#Other | #Fun\n!time\n!feedback\n!topng\n!tophoto\n!togif\n!tovideo\n!toaudio\n!tomkv\n!extreme\n!nerkh\n!sticker [text] [color] [font]\n#calc 2+2\n#weather [city]\n#porn [Text]\n8.#Settings_tgservice\n!setwlc [Your Text]\n#delwlc [Your Text]\n\nAny bugs USE #feedback [text]"
end 
return {
  patterns = {
    "^([Hh]elp)",
    "^[#!/]([Hh]elp)",

  },
  run = run
}
end
