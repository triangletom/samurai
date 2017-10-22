puts "This program will determine type of a triangle"
#requesting data from user
puts "what's the A?"
a = gets.chomp.to_f
puts "what's the B?"
b = gets.chomp.to_f
puts "what's the C?"
c = gets.chomp.to_f

#determining type of the triangle
is_right = ((a**2 == b**2 + c**2) || (b**2 == a**2 + c**2) || (c**2 == a**2 + b**2))
is_isosceles = ( a == b || b==c || a==c )
is_equilateral = ( a==b && b==c )

#printing results
puts "Triangle is:"
puts "Right - #{is_right} \nIsosceles - #{is_isosceles} \nEquilateral - #{is_equilateral}"
