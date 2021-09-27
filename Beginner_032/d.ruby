# 参考：https://www.youtube.com/watch?v=_8FTmJJJ468

VALUE = 0
WAIGHT = 1

item_count, weight_limit = gets.split.map(&:to_i)

items = item_count.times.map{gets.split.map(&:to_i)}.prepend([-1, -1])

dp = (item_count + 1).times.map{Array.new(weight_limit + 1, 0)}

# pp items
# puts '^^^'
# pp dp

(1..item_count).each do |y|
  # puts y
  (0..weight_limit).each do |i|
    if i - items[y][WAIGHT] < 0
      dp[y][i] = dp[y - 1][i]
    else
      a = dp[y - 1][i - items[y][WAIGHT]] + items[y][VALUE]
      b = dp[y - 1][i]

      dp[y][i] = [a, b].max
    end
    # puts "y:#{y} i:#{i}"
    pp dp
  end
end

puts dp[item_count][weight_limit]