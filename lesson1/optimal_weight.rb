puts "This program will calculate your optimal weight"
#requesting data from user
puts "Type your height please:"
height = gets.chomp.to_i
weight = height - 110
#calculating optimal weight and printing results
puts "Your optimal weight is: #{weight}"
