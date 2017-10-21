numbers = []

#for number in (10..100)
#  numbers << number if number % 5 == 0
#end

number = 10
until number > 100 do
  numbers << number
  number += 5
end

#while number <= 101 do
#  numbers << number
#  number +=5
#end

puts numbers
