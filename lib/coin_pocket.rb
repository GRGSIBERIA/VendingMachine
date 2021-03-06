require "./lib/price_counter.rb"
require "./lib/changer.rb"
require "./lib/stamp.rb"

class CoinPocket
  def initialize
    @counter = PriceCounter.new
  end

  def check
    @counter.price
  end

  def insert(coin)
    @counter.insert(coin)
  end

  def refund
    coins = Changer.change(@counter.price)
    @counter.refund
    return coins
  end

  def buy(stamp_price)
    if @counter.price >= stamp_price then
      coins = Changer.change(@counter.price - stamp_price)
      @counter.substitute(stamp_price)
    else
      raise "You can't buy stamp of price #{stamp_price}."
    end
    StampFactory.stamp(stamp_price)
  end
end