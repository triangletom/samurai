puts "This program will calculate the area of a triangle"
#requesting data from user
puts "what's the base?"
base = gets.chomp.to_f
puts "what's the height?"
height = gets.chomp.to_f

#calculating triangles area
puts "The area of the triangle = #{(base * height)/2}"
