require "./lib/coin.rb"
require "./lib/stamp.rb"
require "./lib/coin_pocket.rb"

class VendingMachine
  def initialize
    @pocket = CoinPocket.new
  end

  def insert(coin_price)
    begin
      coin = CoinFactory.coin(coin_price)
      return @pocket.insert(coin)
    rescue => error_msg
      puts error_msg
    end
  end

  def buy(stamp_price)
    begin
      return @pocket.buy(stamp_price)
    rescue => error_msg
      puts error_msg
    end
  end

  def refund
    @pocket.refund
  end

  def check
    @pocket.check
  end
end