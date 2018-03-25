require './lib/translator'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new("hello world")

    assert Translator, translator
  end

  def test_it_initializes_with_input
    translator = Translator.new("hello world")

    assert_equal "hello world", translator.input
  end

  def test_input_prints_to_screen_to_three_repeated_rows
     translator = Translator.new("hello world")

     assert_equal "hello world\nhello world\nhello world", translator.output
   end

   def test_it_converts_one_letter_to_the_top_row_of_braille_character
     translator = Translator.new("hello world")

     assert_equal "0.", translator.top('a')
   end

end
