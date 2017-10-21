puts 'Whats day?'
day = gets.chomp.to_i
puts 'Whats month?'
month = gets.chomp.to_i
puts 'Whats year?'
year = gets.chomp.to_i

monthes = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

index_day = 0

monthes[1] = 29 if year % 4 == 0 || year % 400 == 0 #if year is leap changing days in february from 28 to 29

monthes.each.with_index(1) { |days, index| index_day += days if index < month }

index_day += day

puts index_day
