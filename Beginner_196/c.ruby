n = gets.to_i

if n < 10
  puts 0
  exit
end

answer = 0

(1..n).each do |i|
  temp = i.to_s + i.to_s

  if temp.to_i <= n
    answer += 1
  else
    break
  end
end

puts answer
