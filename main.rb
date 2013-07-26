require './lib/vending_machine.rb'

m = VendingMachine.new
m.insert(10)
m.insert(50)
puts m.refund.inject(0) {|sum, i| sum += i.price}