require './lib/file_reader'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class FileReaderTest < Minitest::Test

  def test_it_exists
    file_reader = FileReader.new

    assert_instance_of FileReader, file_reader
  end
end
