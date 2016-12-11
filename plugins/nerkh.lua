do

local function run(msg, matches)
  if matches[1] == 'nerkh' or 'cast' then
      return "https://telegram.me/botantii/4\nمشاهده کنید و عضو باشد!"
end
end
return {
  patterns = {
    "^[#!/]([Nn]erkh)$",
	 "^([Nn]erkh)$",
    },
  run = run
}
end
