do
-- Will leave the group if be added
local function run(msg, matches)
local bot_id = our_id 
local receiver = get_receiver(msg)
    if matches[1] == 'botleave' and is_admin1(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
	   leave_channel(receiver, ok_cb, false)
    elseif msg.service and msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_admin1(msg) then
       send_large_msg(receiver, 'این قیمت ها برای تامین هزینه سرور و گروه شما هستند! و فقط یک روز برای امتحان ربات برای گروه شما فعال میشود و فردای آن روز باید پول را پرداخت بکنید!
شارژ نمیتواند پول تامین هزینه سرور باشد.

هزینه یک ماه آوردن ربات به گروه شما                                          پنج هزار تومان

 
هزینه دوماه آوردن ربات به گروه شما ماهیانه فقط                       ده هزار تومان

هزینه سه ماه آوردن ربات به گروه شما ماهیانه فقط                   پانزده هزارتومان


و اگر بتوانید سه نفر مشتری برای ما پیدا کنید یک ماه ربات را برای گروه شما شارژ و یا فعال میکنیم!
در صورتی که خریداری بکنند!

برای واریز مبلغ به شماره حساب
مهدی گل محمدی
بانک ملت :
6104 3377 9828 2644

واریز کرده و سپس از صفحه واریز و یا برگه واریز عکس گرفتته و همراه با عکس لینک گروه خود را ارسال کنید!(به پیوی ربات @unfriendlibot ارسال کنید همراه با لینک گروه!)
توجه کنید اگر از برگه واریز عکس نفرستید به هیچ عنوان حرف شما مورد قبول نیست 
با تشکر', ok_cb, false)
       chat_del_user(receiver, 'user#id'..bot_id, ok_cb, false)
	   leave_channel(receiver, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^[#!/](botleave)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
-- :-)
