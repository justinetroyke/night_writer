require './lib/translator'
require 'pry'


  file_text = File.open(ARGV[0], 'r')

  # to_translate = File.read(file_text)
  incoming_english = file_text.read.delete("\n")
  file_text.close

  message = Translator.new(incoming_english)
  message.split_message
  message.lower_case
  message.convert_to_braille
  message.braille_result  # message.top
  # message.mid
  # message.bottom

  writer = File.open(ARGV[1], 'w')

  writer.write(message.braille_result)

  writer.close

   # puts "Created '#{ARGV[1]}' containing #{to_translate.strip.length} characters"
