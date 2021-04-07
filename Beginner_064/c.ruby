GRAY = 1
BROWN = 2
GREEN = 3
LIGHT_BLUE = 4
BLUE = 5
YELLOW = 6
ORANGE = 7
RED = 8
FREE_COLOR = 9

def detect_color(rate)
  if rate <= 399
    GRAY
  elsif rate <= 799
    BROWN
  elsif rate <= 1199
    GREEN
  elsif rate <= 1599
    LIGHT_BLUE
  elsif rate <= 1999
    BLUE
  elsif rate <= 2399
    YELLOW
  elsif rate <= 2799
    ORANGE
  elsif rate <= 3199
    RED
  elsif rate >= 3200
    FREE_COLOR
  end
end

def min_color(rates)
  rates.delete(FREE_COLOR)
  rates.empty? ? 1 : rates.uniq.length
end

def max_color(rates)
  free_count = rates.count(FREE_COLOR)

  rates.delete(FREE_COLOR)
  return rates.uniq.length + free_count
end

n = gets.to_i

rates = gets.split(' ').map{|i| detect_color(i.to_i)}

puts "#{min_color(rates.clone)} #{max_color(rates.clone)}"
