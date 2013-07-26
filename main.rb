require './lib/vending_machine.rb'

m = VendingMachine.new
m.insert(10)
m.insert(100)
m.insert(10)
m.insert(10)
m.insert(1000)
puts "inserted: #{m.check}"

stamps = []
stamps << m.buy(80)
stamps << m.buy(80)
for stamp in stamps
  puts "bought: #{stamp.price}"
end

coins = m.refund
for coin in coins
  puts "coin: #{coin.price}"
end
puts "refund total: #{coins.inject(0) {|sum, i| sum += i.price}}"