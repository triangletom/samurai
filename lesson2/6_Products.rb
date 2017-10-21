puts 'This programm will help you to make the list of your goods'

list_of_goods = {}
purchase = 0

loop do
  puts "\nWrite the name of product (stop to exit)"
  product = gets.chomp.to_s
  break if product == 'stop'

  puts 'How much it costs?'
  price = gets.chomp.to_i

  puts 'How much of it?'
  quantity = gets.chomp.to_i

  list_of_goods[product] = {price: price, quantity: quantity}

end

puts "\nHere what you bought"
list_of_goods.each do | good, attributes |
  cost = attributes[:price] * attributes[:quantity]
  purchase += cost
  puts "#{good}: #{cost}"
end

puts "\nYou must purchase: #{purchase}"
