require "./lib/worth.rb"

class CoinBase < WorthBase
  def initialize(price)
    super(price)
  end
end

class Price10 < CoinBase
  def initialize
    super(10)
  end
end

class Price50 < CoinBase
  def initialize
    super(50)
  end
end

class Price100 < CoinBase
  def initialize
    super(100)
  end
end

class Price500 < CoinBase
  def initialize
    super(500)
  end
end

class Price1000 < CoinBase
  def initialize
    super(1000)
  end
end