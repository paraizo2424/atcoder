WORDS = ['dream', 'dreamer', 'erase', 'eraser']

str = gets.chomp.reverse

can = false

loop do
  flug = false

  WORDS.each do |word|
    if str.slice(0, word.length) == word.reverse
      str.slice!(0, word.length)
      flug = true
    end
  end

  unless flug
    can = false
    break
  end

  if str.length == 0
    can = true
    break
  end
end

puts can ? 'YES' : 'NO'
