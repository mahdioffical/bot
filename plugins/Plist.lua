do

local function run(msg, matches)
  if matches[1] == 'plist' or 'planlist' then
    send_document(get_receiver(msg), "/root/black/data/me/payment.webp", ok_cb, false)
      return "For more information please Contact this robot \n\n@ibornbot"
end
end
return {
  patterns = {
    "^[#!/]([Pp]list)$",
	"^[#!/]([Pp]lanlist)$",
    "^([Pp]list)$",
	"^([Pp]lanlist)$",

    },
  run = run
}
end
