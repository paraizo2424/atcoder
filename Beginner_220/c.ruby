n = gets.to_i

numbers = gets.split.map(&:to_i)

sum_numbers = numbers.sum

x = gets.to_i

a = numbers.sum * (x / numbers.sum)

i = 0
while a <= x
  a += numbers[i]
  i += 1
end

puts ((x / numbers.sum) * numbers.length) + i
