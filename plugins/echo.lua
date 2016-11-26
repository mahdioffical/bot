
local function run(msg, matches)
  local reply_id = msg['id']
  local text = matches[1]
  local b = 2

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  reply_msg(reply_id, text, ok_cb, false)
end

return {
  description = "Simplest plugin ever!",
  usage = "echo plugins\nروش استفاده\nبگو عبارت مورد نظر",
  patterns = {
    "^[Ee]cho +(.+)$"
    "^[!/#]([Ee]cho +(.+)$"  
    }, 
  run = run 
}
