require './lib/braille_translator'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BrailleTranslatorTest < Minitest::Test

  def test_class_exists_and_takes_input
    translator = BrailleTranslator.new("0.00..0..0..0.0.0.")

    assert_instance_of BrailleTranslator, translator
    assert_equal "0.00..0..0..0.0.0.", translator.input
  end
end
