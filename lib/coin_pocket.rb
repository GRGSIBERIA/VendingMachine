require "./lib/price_counter.rb"

class CoinPocket
  def initialize
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

  def buy(stamp_price, coin_depot, stump_depot)
    coin_array = @coins.to_a
    coin_array.sort!{|x, y| x <=> y}.reverse!

    if @counter.price > stamp_price then
      coins = ChangeCoin(@counter.price - stamp_price)
      @counter.substitute(stamp_price)
    else
      raise "You can not buy stamp of price #{stamp_price}."
    end
    StampFactory.stamp(stamp_price)
  end

  def ChangeCoin(surplus)
    prices = [500, 100, 50, 10]
    price_index = 0
    coins = []
    while price_index < 4
      if surplus - prices[price_index] > 0
        coins << CoinFactory.coin(prices[price_index])
        surplus -= prices[price_index]
        redo
      end
      price_index += 1
    end
    coins
  end
end