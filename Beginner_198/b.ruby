str = gets.chomp

str.length.times do |i|
  if (('0' * i) + str) == (('0' * i) + str).reverse
    puts 'Yes'
    exit
  end
end

puts 'No'
