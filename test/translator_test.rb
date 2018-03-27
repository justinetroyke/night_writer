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

  def test_it_has_braille_alphabet
    translator = Translator.new("hello world")

    assert_instance_of Hash, translator.braille_alphabet
  end

  def test_it_converts_one_letter_to_the_top_row_of_braille_character
    translator = Translator.new('a')

    assert_equal "0.", translator.top
  end

  # def test_can_convert_two_letters_to_top_row_of_braille
  #   translator = Translator.new('am')
  #   assert_equal ""

  #  def test_can_convert_three_letters_to_bottom_row_of_braille
  #   translator = Translator.new("hello world")
  #   assert_equal '0.''00', translator.top
  # end

  def test_can_convert_two_letters_to_middle_row_of_braille
    translator = Translator.new('fr')

    assert_equal '00''0.', translator.top
    assert_equal '0.''00', translator.mid
  end

  def test_can_convert_two_letters_to_middle_row_of_braille
    translator = Translator.new('fr')

    assert_equal "000.", translator.top
    assert_equal "0.00", translator.mid
    assert_equal "..0.", translator.bottom
    puts translator.result
  end

  def test_functionality_of_space
    translator = Translator.new('f r')

    assert_equal "00  0.", translator.top
    assert_equal "0.  00", translator.mid
    assert_equal "..  0.", translator.bottom
  end

  def test_functionality_of_double_space
    translator = Translator.new('f  r')

    assert_equal "00    0.", translator.top
    assert_equal "0.    00", translator.mid
    assert_equal "..    0.", translator.bottom
  end

  def test_char_measurement
    



end
