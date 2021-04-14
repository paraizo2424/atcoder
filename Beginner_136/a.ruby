a, b, c =  gets.split(' ').map(&:to_i)

c = c - (a - b)

puts c < 0 ? 0 : c
