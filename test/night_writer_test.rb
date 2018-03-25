require './lib/night_writer'
require './lib/file_reader'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class NightWriterTest < Minitest::Test

  def test_it_exists
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
  end

  def test_it_initializes_with_a_file_reader
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
    assert_instance_of FileReader, night_writer.reader
  end

end
