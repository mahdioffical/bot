do

local function run(msg, matches)
  if matches[1]:lower() == 'my' then
  if matches[2]:lower() == 'number' then
      return reply_msg(msg.id, "+"..(msg.from.phone or '----'), ok_cb, false)
end
  if matches[2]:lower() == 'id' then
      return reply_msg(msg.id, msg.from.id, ok_cb, false)
end
  if matches[2]:lower() == 'user' then
      return reply_msg(msg.id, '@'..(msg.from.username or '----'), ok_cb, false)
end
  if matches[2]:lower() == 'username' then
      return reply_msg(msg.id, '@'..(msg.from.username or '----'), ok_cb, false)
end
  if matches[2]:lower() == 'link' then
      return reply_msg(msg.id, 'Telegram.Me/'..(msg.from.username or '----'), ok_cb, false)
end
  if matches[2]:lower() == 'photo' then
      return reply_msg(msg.id, 'Telegram.Me/'..(msg.from.username or '----'), ok_cb, false)
end
end
if matches[1]:lower() == 'gid' then
      return reply_msg(msg.id, msg.to.id, ok_cb, true)
end
if matches[1]:lower() == 'gname' then
      return reply_msg(msg.id, msg.to.title, ok_cb, false)
    end
end
return {
  patterns = {
    "^[#!/]([Mm]y) (id)$",
    "^[#!/]([Mm]y) (link)$",
    "^[#!/]([Mm]y) (number)$",
    "^[#!/]([Mm]y) (user)$",
	"^[#!/]([Mm]y) (photo)$",
    "^[#!/]([Mm]y) (username)$",
	"^[#!/]([Gg]id)$",
	"^[#!/]([Gg]name)$",
    "^([Mm]y) (id)$",
    "^([Mm]y) (link)$",
    "^([Mm]y) (number)$",
    "^([Mm]y) (user)$",
	"^([Mm]y) (photo)$",
    "^([Mm]y) (username)$",
	"^([Gg]id)$",
	"^([Gg]name)$",
    },
  run = run
}
end
