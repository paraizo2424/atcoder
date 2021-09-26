a, b, c = gets.split.map(&:to_i)

num = c * (a / c)

while num <= b
  if a <= num && num <= b
    puts num
    exit
  end

  num += c
end

puts -1
