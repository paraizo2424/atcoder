drinking_count, alcohol_limit = gets.chomp.split(' ').map(&:to_i)
alcohol_limit *= 100
drunk_status = false

alcohol_amount = 0
drinking_count.times do |n|
  amount, alcohol_percent = gets.chomp.split(' ').map(&:to_i)

  alcohol_amount += amount * alcohol_percent

  if alcohol_amount > alcohol_limit
    drunk_status = n + 1
    break
  end
end

if drunk_status
  puts drunk_status
else
  puts "-1"
end
