require "./lib/price_counter.rb"

class CoinPocket
  def initialize
    @prices = [10, 50, 100, 500]
    @coins = Hash.new
    @counter = PriceCounter.new
  end

  def insert(coin)
    @coins[coin.price] ||= Array.new
    @coins[coin.price] << coin
    @counter.insert(coin)
  end

  def refund
    buffer = @coins
    @coins = []
    return buffer
  end

  def buy(stamp_price)
    for price in prices
      
    end
  end
end