n = gets.to_i

cubes = gets.split(' ').map(&:to_i)

max_move = 0
move = 0

cubes.each_with_index do |h, inx|
  break if n == inx + 1

  if h >= cubes[inx + 1]
    move += 1
  else
    move = 0
    next
  end

  max_move = move if max_move < move
end

puts max_move
