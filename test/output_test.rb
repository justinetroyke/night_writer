require './lib/translator'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class OutputTest < Minitest::Test

  def test_class_exists
    output = Output.new

    assert_instance_of Output, output
  end

end
