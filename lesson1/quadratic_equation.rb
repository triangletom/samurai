puts "This program will help you to find roots of quadratic equation"
#requesting data from user
puts "Whats a?"
a = gets.chomp.to_f
puts "Whats b?"
b = gets.chomp.to_f
puts "Whats c?"
c = gets.chomp.to_f

#calculating D and roots
d = b**2 - (4*a*c)

if d > 0
    d_sqrt = Math.sqrt(d)
    x1 = ((-b) - d_sqrt) / (2 * a)
    x2 = ((-b) + d_sqrt) / (2 * a)
  elsif d == 0
    x1 = (-b)/(2*a) 
end



#printing results
if d < 0
  puts "Your equation has no roots"
elsif d == 0
  puts "In this equation: D = #{d}, x = #{x1}"
else
  puts "In this equation: D = #{d}, x1 = #{x1}, x2 = #{x2}"
end
