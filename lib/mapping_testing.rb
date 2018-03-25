require_relative 'braille_alphabet'

class Translate::BrailleAlphabet

letters = "abab".chars

def top
  letters.each do |letter|
    letter[0]

      # key = letter
      # output_char = braille_alphabet.values_at(key, 0)
      # output_char
  end
end

def mid
  letters.each do |letter|
    letter[1]
  end
end

def bottom
  letters.each do |letter|
    letter[2]
  end
end

puts letters.top
puts letters.mid
puts letters.bottom

# top = a.take[0]
# middle = a.take[1]
# bottom = a.take[2]

end


#
# puts "#{a[0]}#{b[0]}"
# puts "#{a[1]}#{b[1]}"
# puts "#{a[2]}#{b[2]}"
# "Hey".chars = letters
