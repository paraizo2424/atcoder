n, a, b = gets.chomp.split(' ').map(&:to_i)

answer = 0

(1..n).each do |i|
  temp = i.to_s.split('').map(&:to_i).sum
  answer += i if (a <= temp) && (temp <= b)
end

puts answer
