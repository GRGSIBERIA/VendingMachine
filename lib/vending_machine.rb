require "./lib/coin.rb"
require "./lib/stamp.rb"
require "./lib/coin_depot.rb"
require "./lib/stamp_depot.rb"
require "./lib/price_counter.rb"

class VendingMachine
  def initialize
    @coin_depot = CoinDepot.new(
      [10] * 40 + [50] * 20 + [100] * 10 + [500] * 5)
    @stamp_depot = StampDepot.new(20, 20)
    @counter = PriceCounter.new
  end

  def insert(coin_price)
    coin = CoinFactory.coin(coin_price)
    @counter.insert(coin)
  end

  def buy(stamp_price)

  end

  def refund
    @counter.refund
  end
end