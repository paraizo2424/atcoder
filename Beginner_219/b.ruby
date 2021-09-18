strings = {}

strings['1'] = gets.chomp
strings['2'] = gets.chomp
strings['3'] = gets.chomp

t = gets.chomp.split('')

answer = ''

t.each do |i|
  answer << strings[i]
end

puts answer
