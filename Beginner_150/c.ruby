n = gets.to_i
p = gets.chomp.delete(' ')
q = gets.chomp.delete(' ')

arr = []
n.times do |i|
  arr << i + 1
end

temp = arr.permutation(n).to_a

arr.clear
temp.count.times do |i|
  arr << temp[i].join('')
end

puts (arr.index(p) - arr.index(q)).abs
