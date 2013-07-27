require './lib/vending_machine.rb'

m = VendingMachine.new
stamps = []

puts "inserted price: #{m.check}"
while line = STDIN.gets
  array = line.split(" ")

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
  puts "inserted price: #{m.check}"
end

for stamp in stamps
  if stamp != nil then
    puts "bought: #{stamp.price}"
  end
end
