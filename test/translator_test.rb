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

    assert_equal "hello world", translator.output
  end

end
