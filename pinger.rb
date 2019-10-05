require 'net/ping'

class Pinger
  attr_accessor :adresses, :loss, :pause
  include MessageSender

  def initialize
    @adresses = []
    @loss = 2
    @pause = 0
  end

  def add_adress(adress)
    @adresses << adress
  end

  def ping?(adress)
    check = Net::Ping::External.new("#{adress.ip}")
    check.ping?
  end

  def checker    
    loop do
      @adresses.each do |adress|
        if ping?(adress)
          adress.pocket_loss = 0
          change_status(:on, adress)
        else
          adress.pocket_loss += 1
        end
        sleep @pause
        
        change_status(:off, adress) if adress.pocket_loss > @loss
      end
    end
  end

  def change_status(stat, adress)
    case stat
    when :on
      send_message("Заработало " + adress.title) if adress.status == false
      adress.status = true
    when :off
      send_message("Поломалось " + adress.title) if adress.status == true
      adress.status = false
    end
  end
end

