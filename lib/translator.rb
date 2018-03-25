class Translator

  attr_reader :input,
              :braille_alphabet

  def initialize(input)
    @input = input
    @braille_alphabet = {"a"=>["0.","..",".."]}
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
