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
  def self.Coins(coin_prices)
    coins = []
    for price in coin_prices

    end
    coins
  end

  def self.Coin(price)
    coin = nil
    case price
    when 10 then
      coin = Price10.new
    when 50 then
      coin = Price50.new
    when 100 then
      coin = Price100.new
    when 500 then
      coin = Price500.new
    when 1000 then
      coin = Price1000.new
    else
      raise "You need price #{price} coin is not uses."
    end
    coin
  end
end