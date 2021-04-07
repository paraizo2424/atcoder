k, n = gets.split(' ').map(&:to_i)

arr = gets.split(' ').map(&:to_i)

distances = []

(1...n).each do |i|
  distances << arr[i] - arr[i - 1]
end

distances << k - distances.sum

puts distances.sum - distances.max
