arr = gets.split(' ').map(&:to_i).sort{|a, b| b <=> a }

puts arr[0] + arr[1]
