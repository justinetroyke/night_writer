require './lib/mapping_testing'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class TestMapping < Minitest::Test

  def test_it_exists
    mapping = Translate.new
    assert_instance_of Translate, mapping
  end 
end
