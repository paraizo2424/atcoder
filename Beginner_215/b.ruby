n = gets.to_i

i = 0
loop do
  break if 2 ** i > n

  i += 1
end

puts i - 1
