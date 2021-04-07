mochi_count = gets.to_i

diameter_mochis = []

mochi_count.times do
  diameter_mochis << gets.to_i
end

puts diameter_mochis.uniq.count
