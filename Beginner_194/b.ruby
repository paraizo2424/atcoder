n = gets.to_i

employees = []

min = (10 ** 5) *2

n.times do
  temp = gets.split(' ').map(&:to_i)

  employees << temp
end

n.times do |i|
  n.times do |j|
    if i == j
      min = employees[i][0] + employees[i][1] if min > employees[i][0] + employees[i][1]
    else
      if employees[i][0] > employees[j][1]
        min = employees[i][0] if min > employees[i][0]
      else
        min = employees[j][1] if min > employees[j][1]
      end
    end
  end
end

puts min
