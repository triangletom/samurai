puts "This program will calculate your optimal weight"
#requesting data from user
puts "Type your height please:"
height = gets.chomp.to_i
weight = height - 110
#calculating optimal weight and printing results
puts (weight < 0 ? "Your weight is optimal!" : "Optimal for you: #{weight}")
