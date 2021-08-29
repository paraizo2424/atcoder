n = gets.to_i
flug = false
arr = []
n.times do
  arr << gets.split(' ').map(&:to_sym)
end

(0...n).each do |i|
  ((i + 1)...n).each do |j|
    flug = true if arr[i] == arr[j]
  end
end

if flug
  puts 'Yes'
else
  puts 'No'
end
