# require 'telegram/bot'
# token = 'Your telegram bot token'
# Telegram::Bot::Client.run(token, url: 'http://111.90.179.42:8080') do |bot|
#   bot.listen do |message|
#     case message.text
#     when '/start'
#       bot.api.sendMessage(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}, your chat id is #{message.chat.id}")
#     end
#   end
# end