# require_relative 'braille_alphabet'

class Translate
# ::BrailleAlphabet
alpha = {
        "a" => ["0.", "..", ".."],
        "b" => ["0.", "0.", ".."]
      }

letters = ["#{alpha["a"]}, #{alpha["b"]}"]

def top
  letters.each do |letter|
    letter[0]
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

end


# key = letter
# output_char = braille_alphabet.values_at(key, 0)
# output_char
