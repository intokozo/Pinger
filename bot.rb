# require 'telegram/bot'
# TOKEN = 'Your telegram bot token'.freeze
# CHAT_ID = 'Your chat id'.freeze

# module Bot

#   def send_message(message)
#     Telegram::Bot::Client.run(TOKEN) do |bot|
#         bot.api.sendMessage(chat_id: CHAT_ID, text: message)
#     end
#   end
# end