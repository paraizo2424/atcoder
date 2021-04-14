count = gets.to_i

nums = gets.split(' ').map(&:to_i).reverse

if nums.count == 1
  puts 'Yes'
  exit
end

(0...(nums.count - 1)).each do |i|
  if nums[i] >= nums[i + 1]
    next
  end

  if nums[i] == (nums[i + 1] - 1)
    nums[i + 1] -= 1
    next
  end

  puts 'No'
  exit
end

puts 'Yes'
