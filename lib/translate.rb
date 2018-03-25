# require_relative 'braille_alphabet'

class Translate
# ::BrailleAlphabet
# alpha = {
#         "a" => ["0.", "..", ".."],
#         "b" => ["0.", "0.", ".."]
#       }

# letters = ["#{alpha["a"]}, #{alpha["b"]}"]

def top
  alpha = {
          "a" => ["0.", "..", ".."],
          "b" => ["0.", "0.", ".."]
        }
  letters = ["#{alpha["a"]}, #{alpha["b"]}"]
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



"r"=>['0.','00','0.'],
"s"=>['.0','0.','0.'],
"t"=>['.0','00','0.'],
"u"=>['0.','..','00'],
"v"=>['0.','0.','00'],
"w"=>['.0','00','.0'],
"x"=>['00','..','00'],
"y"=>['00','.0','00'],
"z"=>['0.','.0','00']


# puts top
# puts mid
# puts bottom

end


# key = letter
# output_char = braille_alphabet.values_at(key, 0)
# output_char
