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

  # def test_it_initializes_with_input
  #   translator = Translator.new("hello world")
  #
  #   assert_equal "hello world", translator.input
  # end
  #
  # def test_input_prints_to_screen_to_three_repeated_rows
  #    translator = Translator.new("hello world")
  #
  #    assert_equal "hello world\nhello world\nhello world", translator.output
  #  end

   def test_it_has_braille_alphabet
      translator = Translator.new("hello world")

      assert_instance_of Hash, translator.braille_alphabet
   end

   def test_it_converts_one_letter_to_the_top_row_of_braille_character
     translator = Translator.new("hello world")

     assert_equal "0.", translator.top('a')
   end

   def test_can_convert_two_letters_to_top_row_of_braille
     translator = Translator.new("hello world")

     assert_equal '0.''00', translator.top('am')
   end

   def test_can_convert_two_letters_to_middle_row_of_braille
     translator = Translator.new("hello world")

     assert_equal '00''0.', translator.top('fr')
     assert_equal '0.''00', translator.mid('fr')
   end

   def test_can_convert_two_letters_to_middle_row_of_braille
     translator = Translator.new("hello world")

     assert_equal '00''0.', translator.top('fr')
     assert_equal '0.''00', translator.mid('fr')
     assert_equal '..''0.', translator.bottom('fr')
   end

end
