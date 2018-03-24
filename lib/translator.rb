class Translator

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def output
    output_3 = puts @input
    out 3.times do
      output_3
    end
    out
  end

end
