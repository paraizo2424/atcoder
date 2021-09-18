point =  gets.to_i

if point < 40
  puts 40 - point
elsif 40 <= point && point < 70
  puts 70 - point
elsif 70 <= point && point < 90
  puts 90 - point
else
  puts 'expert'
end
