class Tree
  attr_reader :nodes
  def initialize(intersection_count)
    @nodes = Array.new(intersection_count + 1){|i| i}
  end

  def root(x)
    return x if @nodes[x] == x
    @nodes[x] = root(@nodes[x])
  end

  def unite(arr)
    rx = root(arr.first)
    ry = root(arr.last)

    @nodes[ry] = rx
  end

  def count
    @nodes.length.times{|i| root(i)} # treeの経路圧縮

    @nodes.uniq.length - 1 # treeの数、先頭の0のノード分-1
  end
end
intersection_count, road_count = gets.split(' ').map(&:to_i)

tree = Tree.new(intersection_count)

road_count.times do
  tree.unite(gets.split(' ').map(&:to_i))
end

puts tree.count - 1
