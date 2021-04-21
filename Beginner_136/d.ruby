cells = gets.chomp.split('')

count_R = 0
count_L = 0

flug = 'R'

arr = []

(0...cells.length).each do |i|
  cell = cells.shift

  if cell == 'R'
    count_R += 1
  elsif cell == 'L'
    count_L += 1

    if flug == 'R'
      flug = 'L'
    end
  end

  if cells.length > 0
    if cells.first == 'R' && flug == 'L'
      flug = 'R'

      (count_R - 1).times do
        arr << 0
      end

      if (count_L + count_R).even?
        arr << (count_L + count_R) / 2
        arr << (count_L + count_R) / 2
      else
        if count_R > count_L
          arr << (count_L + count_R) / 2 + 1
          arr << (count_L + count_R) / 2
        else
          arr << (count_L + count_R) / 2
          arr << (count_L + count_R) / 2 + 1
        end
      end

      (count_L - 1).times do
        arr << 0
      end

      count_R = 0
      count_L = 0
    end
  else
    (count_R - 1).times do
      arr << 0
    end

    arr << count_L
    arr << count_R

    (count_L - 1).times do
      arr << 0
    end

  end
end

puts arr.join(' ')
