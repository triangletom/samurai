fibonacci = [0, 1]

next_number = 1

while next_number < 100 do #stops while next_number > 100
  fibonacci << next_number #adding next_number to an array
  next_number = fibonacci[-1] + fibonacci[-2]
end

puts fibonacci
