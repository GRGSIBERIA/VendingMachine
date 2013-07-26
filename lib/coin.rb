require "./lib/worth.rb"

class CoinBase < WorthBase
  def initialize(price)
    super(price)
  end
end

class Price10 < CoinBase
  def initialize
    super(10)
  end
end

class Price50 < CoinBase
  def initialize
    super(50)
  end
end

class Price100 < CoinBase
  def initialize
    super(100)
  end
end

class Price500 < CoinBase
  def initialize
    super(500)
  end
end

class Price1000 < CoinBase
  def initialize
    super(1000)
  end
end

class CoinFactory
  def self.coin(price)
    case price
    when 10 then
      return Price10.new
    when 50 then
      return Price50.new
    when 100 then
      return Price100.new
    when 500 then
      return Price500.new
    when 1000 then
      return Price1000.new
    else
      raise "You need price #{price} coin is not uses."
    end
  end
end