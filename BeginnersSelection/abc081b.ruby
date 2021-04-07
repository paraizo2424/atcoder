count = gets.to_i

numbers = gets.chomp.split(' ').map(&:to_i)

control_count = 0

loop do
  break if numbers.any?{|i| i.odd?}

  numbers.map!{|i| i/2}

  control_count += 1
end

puts control_count
