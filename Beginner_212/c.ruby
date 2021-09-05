n, m = gets.split(' ').map(&:to_i)

a_arr = gets.split(' ').map(&:to_i).uniq.sort
b_arr = gets.split(' ').map(&:to_i).uniq.sort

answer = (10 ** 9) + 1

i = 0
j = 0
while a_arr.length > i && b_arr.length > j
  dif = (a_arr[i] - b_arr[j]).abs
  answer = dif if answer > dif

  if a_arr[i] > b_arr[j]
    j += 1
  else
    i += 1
  end
end

puts answer
