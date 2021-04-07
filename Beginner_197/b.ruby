h, w, x, y = gets.split(' ').map(&:to_i)

x -= 1
y -= 1

cells = []
h.times do
  cells << gets.chomp.split('')
end

# 初期値は必ず障害物なし
answer = 1

(1..w).each do |i|
  break if (y + i) > (w - 1)
  if cells[x][y + i] == '.'
    answer += 1
  else
    break
  end
end

(1..w).each do |i|
  break if (y - i) < 0

  if cells[x][y - i] == '.'
    answer += 1
  else
    break
  end
end

(1..h).each do |i|
  break if (x + i) > (h - 1)
  if cells[x + i][y] == '.'
    answer += 1
  else
    break
  end
end

(1..h).each do |i|
  break if (x - i) < 0
  if cells[x - i][y] == '.'
    answer += 1
  else
    break
  end
end

puts answer
