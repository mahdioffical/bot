do

local function run(msg, matches)
  if matches[1] == 'nerkh' or 'cast' then
    send_document(get_receiver(msg), "/root/black/data/me/nerkh.webp", ok_cb, false)
      return "لینک قیمت های بات ضد اسپم و محافظ گروه\n7روز رایگان برای تست بات\n30روزه 3هزارتومان\n60روز 5 هزارتومان\nنامحدود 10هزارتومان\nهزینه به صورت شارژ یا کارت به کارت پذیرفته میشود\n\nاطلاعات بیشتر @ibornbot"
end
end
return {
  patterns = {
    "^[#!/]([Nn]erkh)$",
	"^[#!/]([Cc]ast)$",
    "^([Nn]erkh)$",
	"^([Nn]ast)$",

    },
  run = run
}
end
