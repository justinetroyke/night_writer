# class NightWriter
#   attr_reader :reader
#
#   # def initialize
#   #   @reader = FileReader.new
#   # end
#
#   def try_it
    # a = "0.\n..\n.."
    # b = "0.\n0.\n"
    # ab
#   end
#
# end
letters = "ab".chars

a = ["0.", "..", ".."]
b = ["0.", "0.", ".."]

def top
  a.take[0]
end

def mid
  a.take[1]
end

def bottom
  a.take[2]
end

# top = a.take[0]
# middle = a.take[1]
# bottom = a.take[2]

puts "#{a[0]}#{b[0]}"
puts "#{a[1]}#{b[1]}"
puts "#{a[2]}#{b[2]}"
# "Hey".chars = letters
letters = []
letters << "ab".chars
