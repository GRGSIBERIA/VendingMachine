class PriceCounter
  def initialize
    @price = 0
  end

  def insert(coin)
    @price += coin.price
  end

  def refund
    @price = 0
  end

  attr_reader :price
end