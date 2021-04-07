a, b, c = gets.chomp.split(' ').map(&:to_i)

if c == 0
  if a > b
    puts "Takahashi"
  else
    puts "Aoki"
  end
elsif c == 1
  if b > a
    puts "Aoki"
  else
    puts "Takahashi"
  end
end
