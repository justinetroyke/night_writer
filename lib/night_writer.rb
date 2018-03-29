require './lib/translator'
require 'pry'

file_text = File.open(ARGV[0], 'r')
incoming_english = file_text.read.delete("\n")
file_text.close

message = Translator.new(incoming_english)

writer = File.open(ARGV[1], 'w')
writer.write(message.braille_result)
writer.close

   #puts "Created '#{ARGV[1]}' containing #{to_translate.strip.length} characters
  file_text = File.open(ARGV[0], 'r')
  incoming_english = file_text.read.delete("\n")
  file_text.close

  message = Translator.new(incoming_english)

  writer = File.open(ARGV[1], 'w')
  writer.write(message.braille_result)
  writer.close

   # puts "Created '#{ARGV[1]}' containing #{to_translate.strip.length} characters"
