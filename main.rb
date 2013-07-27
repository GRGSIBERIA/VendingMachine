require './lib/vending_machine.rb'

m = VendingMachine.new
stamps = []

while line = STDIN.gets
  array = line.split(" ")
  puts "inserted price: #{m.check}"
  
  begin
    case array[0]
    when "quit"
      puts "quit vending machine"
      break
    when "insert"
      coin = m.insert(array[1].to_i)
      puts "insert coin: #{coin.price}"
    when "refund"
      coins = m.refund
      puts "refund coins"
      for coin in coins
        puts "coin: #{coin.price}"
      end
    when "buy"
      stamp = m.buy(array[1].to_i)
      stamps << stamp
      puts "bought stamp: #{stamp.price}" 
    end
  rescue 
  end
end

for stamp in stamps
  puts "bought: #{stamp.price}"
end
