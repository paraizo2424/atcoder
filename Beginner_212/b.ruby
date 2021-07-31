numbers = gets.chomp.split('').map(&:to_i)

if numbers.uniq.count == 1
  puts 'Weak'
  exit
end

(numbers.count - 1).times do |i|
  temp = numbers[i] + 1
  temp = 0 if temp == 10

  if temp != numbers[i + 1]
    puts "Strong"
    exit
  end
end

puts 'Weak'
