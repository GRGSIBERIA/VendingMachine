require "./lib/coin.rb"

class CoinDepot
  def initialize(coins)
    @coins = Hash.new
    for coin in coins
      @coins[coin.price] ||= Array.new
      @coins[coin.price] << coin
    end
  end

  def Deposit(coin)
    @coins[coin.price] << coin
  end 

  def Withdraw(coin_prices)
    withdrowal = []
    for price in coin_prices
      buffer = @coins[price].pop
      if buffer == nil then
        raise "I can not have price #{price} coin."
      end
      withdrowal << buffer
    end
    withdrowal
  end
end