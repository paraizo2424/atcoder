nodes = {}
node_count = gets.to_i

node_count.times do |i|
  nodes[i + 1] = []
end

(node_count - 1).times do
  ary = gets.split.map(&:to_i)

  nodes[ary[0]] << ary[1]
  nodes[ary[1]] << ary[0]
end

(1..node_count).each do |idx|
  if nodes[idx].uniq.count == (node_count - 1)
    puts 'Yes'
    exit
  end
end

puts 'No'
