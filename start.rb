require_relative 'message_sender'
require_relative 'adress'
require_relative 'pinger'

ping = Pinger.new
ping.add_adress(Adress.new('SQL', '192.168.12.12'))
ping.add_adress(Adress.new('Terminal', '192.168.12.14'))
ping.add_adress(Adress.new('Cool', '192.168.12.123'))
ping.checker