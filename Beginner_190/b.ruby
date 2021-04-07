temp = gets.split(' ').map(&:to_i)
magic_count = temp.first
monster = {}
monster[:agility] = temp[1]
monster[:defense] = temp[2]

magics = []
magic_count.times do
  temp = gets.split(' ').map(&:to_i)
  magics << {casting_time: temp[0], damage: temp[1]}
end

message = "No"

magics.each do |magic|
  if (magic[:casting_time] < monster[:agility]) and (magic[:damage] > monster[:defense])
    message = 'Yes'
    break
  end
end

puts message
