class Translator

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def output
     output_3 = []
     3.times do
       output_3 << "#{@input}"
     end
     output_3.join("\n")
   end 

end
