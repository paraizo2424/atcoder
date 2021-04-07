n, y = gets.chomp.split(' ').map(&:to_i)

(0..n).each do |a|
  break if (a * 10000) > y
  (0..n).each do |b|
    break if (n - a - b) < 0
    c = n - a - b
    if ( a * 10000 + b * 5000 + c * 1000 ) == y
      puts "#{a} #{b} #{c}"
      exit
    end
  end
end

puts "-1 -1 -1"