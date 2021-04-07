t_count = gets.to_i

answers = []

t_count.times do

  l, r = gets.chomp.split(' ').map(&:to_i)

  temp = 0

  (l..r).each do |b|
    (l..b).each do |a|
      c = b - a
      temp += 1 if (l <= c) && (c <= r)
    end
  end

  answers << temp
end

puts answers
