blue_count, add_blue, add_red, multiple_of_red = gets.split(' ').map(&:to_i)
red_count = 0

(10 ** 5 + 1).times do |i|
  if blue_count <= (red_count * multiple_of_red)
    puts i
    exit
  end

  blue_count += add_blue
  red_count += add_red
end

puts -1
