require "./lib/stamp.rb"

class StampDepot
  def initialize(stamp50_number, stamp80_number)
    @stamps = Hash.new
    @stamps[50] = [Stamp50.new] * stamp50_number
    @stamps[80] = [Stamp80.new] * stamp80_number
  end

  def Withdraw(price_of_stamp)
    begin
      return @stamps[price_of_stamp].pop
    rescue
      raise "You need price #{price_of_stamp} stamp is not exists."
    end
  end
end