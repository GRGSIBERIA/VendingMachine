require "./lib/coin.rb"

class Changer
  def self.change(surplus)
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