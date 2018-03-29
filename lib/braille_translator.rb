require 'pry'

class BrailleTranslator

 attr_reader :input

 def initialize(input)
   @input = input
   @braille_alphabet = {
     "a"=>['0.','..','..'],
     "b"=>['0.','0.','..'],
     "c"=>['00','..','..'],
     "d"=>['00','.0','..'],
     "e"=>['0.','.0','..'],
     "f"=>['00','0.','..'],
     "g"=>['00','00','..'],
     "h"=>['0.','00','..'],
     "i"=>['.0','0.','..'],
     "j"=>['.0','00','..'],
     "k"=>['0.','..','0.'],
     "l"=>['0.','0.','0.'],
     "m"=>['00','..','0.'],
     "n"=>['00','.0','0.'],
     "o"=>['0.','.0','0.'],
     "p"=>['00','0.','0.'],
     "q"=>['00','00','0.'],
     "r"=>['0.','00','0.'],
     "s"=>['.0','0.','0.'],
     "t"=>['.0','00','0.'],
     "u"=>['0.','..','00'],
     "v"=>['0.','0.','00'],
     "w"=>['.0','00','.0'],
     "x"=>['00','..','00'],
     "y"=>['00','.0','00'],
     "z"=>['0.','.0','00'],
     " "=>['..','..','..'],
     "shift"=>['..','..','.0'],
     "?"=>['..','0.','00'],
     "'"=>['..','..','0.'],
     "!"=>['..','00','0.'],
     ","=>['..','0.','..'],
     "."=>['..','00','.0'],
     "-"=>['..','..','00']
    }
 end


 def split
   number = (@input.length / 3)
   @input.scan(/.{1,#{number}}/)
 end

 def top
   out_top = []
   out_top << split.fetch(0).scan(/../)
   return out_top.flatten
 end

 def mid
   out_mid = []
   out_mid << split.fetch(1).scan(/../)
   return out_mid.flatten
 end

 def bottom
   out_bottom = []
   out_bottom << split.fetch(2).scan(/../)
   return out_bottom.flatten
 end


 def english_result
   result = "#{top}#{mid}#{bottom}"
 end




end
