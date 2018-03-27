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
      "z"=>['0.','.0','00'],
      " "=>['..','..','..'],
      "shift"=>['..','..','.0']
    }
  end

  def split_message
    @input.split('')
  end

  def convert_to_braille
    braille_code = split_message.map do |letter|
      if letter == letter.downcase
        @braille_alphabet[letter]
      elsif letter == letter.upcase
        

      end
    end
  end

  def top
    out_top = ''
    convert_to_braille.each do |element|
        out_top << element[0]
    end
    out_top
  end

  def mid
    out_mid = ''
    convert_to_braille.each do |element|
      out_mid << element[1]
    end
    out_mid
  end

  def bottom
     out_bottom = ''
      convert_to_braille.each do |element|
        out_bottom << element[2]
      end
     out_bottom
  end

  def result
    "#{top}\n#{mid}\n#{bottom}"
  end
end
