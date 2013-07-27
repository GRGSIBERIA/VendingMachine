class PriceCounter
  def initialize
    @price = 0
  end

  def insert(coin)
    @price += coin.price
    coin
  end

  def substitute(price)
    @price -= price
  end

  def refund
    @price = 0
  end

  attr_reader :price
end