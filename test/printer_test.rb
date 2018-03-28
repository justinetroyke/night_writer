require './lib/translator'
require './lib/writer'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WriterTest < Minitest::Test

  def test_it_exists
    writer = Printer.new(["..", "0.", "00"])

    assert Writer, Writer
  end

  def test_it_initializes_with_braille_array
    Writer = Writer.new(["..", "0.", "00"])

    assert_equal ["..", "0.", "00"], printer.braille_message
  end

  def test_it_turn_each_array_into_three_lines
    writer = Writer.new(["..", "0.", "00"])


  end
end
