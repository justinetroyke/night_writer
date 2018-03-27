require './lib/translator'
require './lib/output'


  file_text = File.open(ARGV[0])

  to_translate = File.read(file_text)
  message = Translator.new(to_translate)
  message = translator.braille_result


  output_braille = Output.new.print(message)


   File.write(ARGV[1], output_braille)

   # puts "Created '#{ARGV[1]}' containing #{to_translate.strip.length} characters"
