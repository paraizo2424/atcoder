five_hundred_yen = gets.to_i

one_hundred_yen = gets.to_i

fifty_yen = gets.to_i

target_value = gets.to_i

answer = 0

(0..five_hundred_yen).each do |fhy|
  (0..one_hundred_yen).each do |ohy|
    (0..fifty_yen).each do |fy|
      answer += 1 if target_value == ((500 * fhy) + (100 * ohy) + (50 * fy))
    end
  end
end

puts answer
