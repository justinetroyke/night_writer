require './lib/translate'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class TestMapping < Minitest::Test

  def test_it_exists
    mapping = Translate.new
    assert_instance_of Translate, mapping
  end

  def test_top_meth
    mapping = Translate.new
    assert "0.""0.", mapping.top
  end


end
