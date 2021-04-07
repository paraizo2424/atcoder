n = gets.to_i

arr = gets.split(' ').map(&:to_i)

answer = 0

(1..n).each do |i|
  temp = arr.combination(i).to_a

  temp.each do |in_arr|
    answer += in_arr.max * in_arr.min
    answer = answer % 998244353
  end

end

puts answer
