require './lib/braille_translator'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BrailleTranslatorTest < Minitest::Test

 def test_class_exists_and_takes_input
   translator = BrailleTranslator.new("0.00..0..0..0")

   assert_instance_of BrailleTranslator, translator
   assert_equal "0.00..0..0..0", translator.input
 end

 def test_splits_string_into_thirds_in_new_array
   translator = BrailleTranslator.new("0.00..0..0..")

   assert_equal ["0.00", "..0.", ".0.."], translator.split
 end

 def test_new_arrays_assigned_to_new_variables
   translator = BrailleTranslator.new("0.00..0..0..")

   assert_equal [".0.."], translator.file_thirds
 end

 def scan_all_strings
   translator = BrailleTranslator.new("0.00..0..0..")

   assert_equal [".0",".."], translator.scan_all_strings
 end

 # def test_scan_string
 #   translator = BrailleTranslator.new("0.00..0..0..")
 #
 #   assert_equal , translator.scan_string
 # end
 #
 # def test_slice_array
 #   translator = BrailleTranslator.new("0.00..0..0..")
 #
 #   assert_equal ["0.", "00"]["..", "0."][".0", ".."], translator.slice_array
 # end

 # def test_even_slicing
 #   skip
 #   translator = BrailleTranslator.new("0.00..0..0..")
 #
 #   assert_equal 3, translator.slice_sting_into_even_segments
 # end
 #
 #
 # def test_translator_takes_two_chars_of_string
 #   skip
 #   translator = BrailleTranslator.new("0.00..0..0..")
 #
 #   assert_equal ["0."], ["00"], [".."], ["0."], [".0"], [".."], translator.divide_into_three
 # end
 #
 # def group_every_third
 #   skip
 #
 # end



end
