str, idx = gets.chomp.split(' ')
arr = str.split('').permutation(str.length).to_a.uniq.sort

puts arr[idx.to_i - 1].join
