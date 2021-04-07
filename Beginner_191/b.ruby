n, x = gets.chomp.split(' ').map(&:to_i)

nums = gets.chomp.split(' ').map(&:to_i)

nums.delete(x)

if nums.empty?
  puts ''
else
  puts nums.join(' ')
end
