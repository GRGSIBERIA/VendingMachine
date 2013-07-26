require "./lib/coin.rb"
require "./lib/stamp.rb"
require "./lib/coin_pocket.rb"

class VendingMachine
  def initialize
    @pocket = CoinPocket.new
  end

  def insert(coin_price)
    coin = CoinFactory.coin(coin_price)
    @pocket.insert(coin)
  end

  def buy(stamp_price)
    @pocket.buy(stamp_price)
  end

  def refund
    @pocket.refund
  end
end