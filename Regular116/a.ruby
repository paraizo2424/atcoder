def enumerateOddEvenCount(n)
  # 1は奇数のため
  odd_count = 1
  even_count = 0

  cul_range = Integer.sqrt(n)

  temp = [1]

  (2..cul_range).each do |i|
    if n % i == 0
      if i.odd?
        odd_count += 1
      else
        even_count += 1
      end

      if ((n / i) ** 2) != n
        if (n / i).odd?
          odd_count += 1
        else
          even_count += 1
        end
        temp << n / i
      end

      # あああ
      temp << i
    end
  end

  # nの判定
  if n.odd?
    odd_count += 1
  else
    even_count += 1
  end

  # あああ
  temp << n
  pp "#{n} #{temp.sort}"

  if odd_count > even_count
    "Odd"
  elsif odd_count < even_count
    "Even"
  else
    "Same"
  end
end

# t = gets.to_i

# t.times do
#   temp = gets.to_i

#   if temp.odd?
#     puts "Odd"
#   else
#     puts enumerateOddEvenCount(temp)
#   end
# end

t = 36
t.times do |i|
  puts enumerateOddEvenCount(i)
  puts "------------------"
end
