n_count = gets.to_i

ary_p = gets.split(' ').map(&:to_i).prepend(0)
ary_q = Array.new(n_count, nil)

(1..n_count).each do |i|
  ary_q[ary_p[i]] = i
end

puts ary_q.join(' ')
