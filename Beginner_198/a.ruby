i = gets.to_i

if i == 1
  puts '0'
elsif
  count = 0
  (1...i).each do |n|
    count += 1
  end
  puts count
end
