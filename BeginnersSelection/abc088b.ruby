card_count = gets.to_i

cards = gets.chomp.split(' ').map(&:to_i).sort.reverse

alice = 0
bob = 0

flug = 1
while !cards.empty? do

  if flug == 1
	alice += cards.shift
  else
    bob += cards.shift
  end

  flug *= -1
end

puts alice - bob
