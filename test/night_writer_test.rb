require './lib/night_writer'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class NightWriterTest < Minitest::Test

  def test_it_exists
    translator = NightWriter.new
    
    assert NightWriter, translator
  end

end
