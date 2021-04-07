if gets.chomp.split('').uniq.count == 1
  puts "Won"
else
  puts "Lost"
end
