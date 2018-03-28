require './lib/translator'
require './lib/writer'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WriterTest < Minitest::Test

  def test_it_exists
    writer = Writer.new(["..", "0.", "00"])

    assert Writer, writer
  end

  def test_it_initializes_with_braille_array
    writer = Writer.new(["..", "0.", "00"])

    assert_equal ["..", "0.", "00"], writer.braille_message
  end

  def test_it_turn_each_array_into_three_lines
    writer = Writer.new(["..", "0.", "00"])

    assert_equal "..", writer.write_braille
  end

  def test_it_can_cut_the_width_at_80
    given = (['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'],['0.','..','..'])
    writer = Writer.new(given)

    asser_equal "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.
    0.0.0.0.0.0.0.0.0.\n0.0.0.0.", writer.write_braille
  end

end
