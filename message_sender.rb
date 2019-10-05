require 'mechanize'

module MessageSender
	def send_message(message)
		agent = Mechanize.new
	  agent.get "https://pushall.ru/api.php?type=multicast&id=YourID&key=YourKey&uids=[IdUsers]&title=Внимание&text=#{message}"
	end
end