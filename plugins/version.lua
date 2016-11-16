do

local function run(msg, matches)
  if matches[1] == 'extreme' or 'extremebot' then
    send_document(get_receiver(msg), "/root/M/data/me/extreme.webp", ok_cb, false)
      return "Extreme\n an anti spam cli bot for SuperGroups\ndeveloper & sudo : #MasiH [@iborn]\nmanage & sudo #MR_PU [@dragon_dev]\nadmins mahdi [@Torbu]\n\nchannel @extreme_ch"
end
end
return {
  patterns = {
    "^[#!/]([Ee]xtreme)$",
    "^[#!/]([Ee]xtremebot)$",
    "^([Ee]xtreme)$",
    "^([Ee]xtremebot)$",
    },
  run = run
}
end
