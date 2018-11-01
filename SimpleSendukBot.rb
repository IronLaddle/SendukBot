require 'telegram/bot'

token = <token>
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Please click on this commands /intro /waktuSolat ..Keep calm n ")
    when '/intro'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to telegram bot (beta version)")
    when '/waktuSolat'
      bot.api.send_message(chat_id: message.chat.id, text: "Imsak   : 5.28")
      bot.api.send_message(chat_id: message.chat.id, text: "Subuh   : 5.38")
      bot.api.send_message(chat_id: message.chat.id, text: "Zohor   : 12.58")
      bot.api.send_message(chat_id: message.chat.id, text: "Asar    : 16.15")
      bot.api.send_message(chat_id: message.chat.id, text: "Maghrib : 18.58")
      bot.api.send_message(chat_id: message.chat.id, text: "Isyak   : 20.09")
    end
  end
end

