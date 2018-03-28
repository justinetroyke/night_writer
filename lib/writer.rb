class Writer

  attr_reader :braille_message

  def initialize(braille_message)
    @braille_message = braille_message
  end

  def write_braille
    line1 = ''
    @braille_message.each_slice(3) do |letter|
      line1 << letter[0]
    end
    line1
  end

end
