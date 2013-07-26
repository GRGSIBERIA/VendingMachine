require "./lib/worth.rb"

class StampBase < WorthBase
  def initialize(price)
    super(price)
  end
end

class Stamp50 < WorthBase
  def initialize
    super(50)
  end
end

class Stamp80 < WorthBase
  def initialize
    super(80)
  end
end

class StampFactory
  def self.stamp(price)
    stamp = nil
    case price
    when 50
      return Stamp50.new
    when 80
      return Stamp80.new
    else
      raise "You need price #{price} stamp is not exists."
    end
  end
end