require './lib/night_writer'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class NightWriterTest < Minitest::Test

  def test_it_exists
    translator = NightWriter.new("hello world")

    assert NightWriter, translator
  end

  def test_it_initializes_with_input
    translator = NightWriter.new("hello world")

    assert_equal "hello world", translator.input
  end

  def test_input_prints_to_screen_to_three_repeated_rows
    translator = NightWriter.new("hello world")

    assert_equal "hello world\nhello world\nhello world", translator.output
  end

end
