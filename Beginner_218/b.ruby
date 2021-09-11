numbers = gets.split.map(&:to_i)

alphabets = ('a'..'z').to_a

numbers.each do |i|
  print "#{alphabets[i - 1]}"
end

puts ""
