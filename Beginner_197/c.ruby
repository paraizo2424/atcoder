n = gets.to_i

arr = gets.split(' ').map(&:to_i)

min = 2 ** 30
(1..(arr.length - 1)).each do |i|
  a = 0
  arr.slice(0, i).each do |n|
    a |= n
  end

  b = 0
  arr.slice(i, arr.length).each do |n|
    b |= n
  end

  temp = a ^ b

  min = temp if min > temp
end

puts min
