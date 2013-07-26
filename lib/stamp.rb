require "./lib/worth.rb"

class StampBase < WorthBase
  def initialize(price)
    super(price)
  end
end

class Stamp50 < WorthBase
  def initialize
    super(50)
  end
end

class Stamp80 < WorthBase
  def initialize
    super(80)
  end
end

