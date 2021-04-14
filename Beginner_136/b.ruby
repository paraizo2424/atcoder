n = gets.to_i

answer = 0

(1..n).each do |i|
  answer += 1 if i.to_s.length.odd?
end

puts answer
