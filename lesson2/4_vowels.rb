alphabet = "a".."z"
vowels = {} #this hash will store vowels from 'alphabet'
alphabet.each.with_index(1)  { | letter, position | vowels[letter] = position if /[aeiou]/.match(letter) } #adding pair 'letter => position' to hash 'vowels' when 'letter' matches any symbol of /[aeiou]
puts vowels
