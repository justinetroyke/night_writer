class NightWriter

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def output
    out_3 = 3.times do
      puts @input
    end
      return out_3
  end

end
