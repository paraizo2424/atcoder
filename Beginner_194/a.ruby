non_fat_milk_solids, milk_fat = gets.split(' ').map(&:to_i)

milk_solids = non_fat_milk_solids + milk_fat

if milk_solids >= 15 && milk_fat >= 8
  puts 1
elsif milk_solids >= 10 && milk_fat >= 3
  puts 2
elsif milk_solids >= 3
  puts 3
else
  puts 4
end
