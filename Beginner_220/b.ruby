def to_decimal(array, k)
  number = 0

  array.length.times do |i|
    number += array.pop.to_i * (k ** i)
  end

  number
end

k = gets.to_i

a, b = gets.split.map(&:chars)

a = to_decimal(a, k)

b = to_decimal(b, k)

puts a * b
