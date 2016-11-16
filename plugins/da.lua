do

local function run(msg, matches)
  if matches[1] == 'statsbot' or 'statsbot' then
    send_document(get_receiver(msg), "/root/M/data/me/extreme.webp", ok_cb, false)
      return "Groups: 182\nUsers: 185\nowner: 182"
end
end
return {
  patterns = {
    "^[#!/]([Ss]tatsbot)$,
    "^([Ss]tatsbot)$",

    },
  run = run
}
end
