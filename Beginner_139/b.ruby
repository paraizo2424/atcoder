a, b = gets.split(' ').map(&:to_i)

if b == 1
  puts 0
  exit
end

answer = 1
temp = a

loop do
  break if temp >= b

  temp += a - 1
  answer += 1
end

puts answer
