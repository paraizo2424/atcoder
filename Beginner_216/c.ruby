n = gets.to_i

if n == 0
  puts 'B'
  exit
end

str = ''

loop do
  if n.even?
    n /= 2
    str += 'B'
  else
    n -= 1
    str += 'A'
  end

  break if n == 0
end

puts str.reverse
