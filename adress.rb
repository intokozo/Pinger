class Adress
  attr_accessor :status, :pocket_loss
  attr_reader :title, :ip
  def initialize(title, ip)
    @title = title
    @ip = ip
    @status = false
    @pocket_loss = 0
  end
end