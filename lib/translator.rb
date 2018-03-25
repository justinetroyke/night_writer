class Translator

  attr_reader :input,
              :braille_alphabet

  def initialize(input)
    @input = input
    @braille_alphabet = {
      "a"=>['0.','..','..'],
      "b"=>['0.','0.','..'],
      "c"=>['00','..','..'],
      "d"=>['00','.0','..'],
      "e"=>['0.','.0','..'],
      "f"=>['00','0.','..'],
      "g"=>['00','00','..'],
      "h"=>['0.','00','..'],
      "i"=>['.0','0.','..'],
      "j"=>['.0','00','..'],
      "k"=>['0.','..','0.'],
      "l"=>['0.','0.','0.'],
      "m"=>['00','..','0.'],
      "n"=>['00','.0','0.'],
      "o"=>['0.','.0','0.'],
      "p"=>['00','0.','0.'],
      "q"=>['00','00','0.'],
      "r"=>['0.','00','0.'],
      "s"=>['.0','0.','0.'],
      "t"=>['.0','00','0.'],
      "u"=>['0.','..','00'],
      "v"=>['0.','0.','00'],
      "w"=>['.0','00','.0'],
      "x"=>['00','..','00'],
      "y"=>['00','.0','00'],
      "z"=>['0.','.0','00']
    }
  end

  def output
     output_3 = []
     3.times do
       output_3 << "#{@input}"
     end
     output_3.join("\n")
   end

   def top(letters)
     split_letters = letters.chars
     out = ""
     split_letters.each do |letter|
      key = letter
      out = @braille_alphabet.values[0][0]
      end
      out
    end
end
