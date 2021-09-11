n = gets.to_i
str = gets.chars

if str[n - 1] == 'o'
  puts 'Yes'
elsif str[n - 1] == 'x'
  puts 'No'
end
