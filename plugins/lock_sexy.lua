local function run(msg)
    local data = load_data(_config.moderation.data)
     if data[tostring(msg.to.id)]['settings']['sexy'] == 'yes' then
if not is_momod(msg) then
 delete_msg(msg.id, ok_cb, true)
end
end

return {patterns = {
"کون(.+)",
 "کص",
 "ممه(.+)",
 "جق",
 "کونی(.+)",
 "جنده",
 "کونده(.+)",
 "حرومی",
},run = run}

