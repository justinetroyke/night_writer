class NightWriter
  attr_reader :reader

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
