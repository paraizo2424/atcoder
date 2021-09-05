arr = gets.chomp.split(' ')

s = arr.first

if arr.sort.first == s
  puts 'Yes'
else
  puts 'No'
end
