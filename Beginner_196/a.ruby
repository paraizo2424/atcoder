a, b = gets.split(' ').map(&:to_i)
c, d = gets.split(' ').map(&:to_i)

answer = -10000

(a..b).each do |x|
  (c..d).each do |y|
    temp = x - y
    answer = temp if answer < temp
  end
end

puts answer
