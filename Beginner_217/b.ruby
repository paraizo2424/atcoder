contests = ['ABC', 'ARC', 'AGC', 'AHC']

3.times do
  contests.delete(gets.chomp)
end

puts contests.first
