class Node
  def initialize(node_count)
    @nodes = Array.new(node_count){|i| i}
  end

  def root(x)
    return x if @nodes[x] == x
    @nodes[x] = root(@nodes[x]) # 経路圧縮
  end

  def unite(x, y)
    rx = root(x)
    ry = root(y)
    @nodes[rx] = ry
  end

  def same?(x, y)
    return root(x) == root(y)
  end
end

node_count, query_count = gets.split(' ').map(&:to_i)

tree = Node.new(node_count)

LINK = 0
JOINT = 1

query_count.times do
  process, x, y = gets.split(' ').map(&:to_i)

  if process == LINK
    tree.unite(x, y)
  elsif process == JOINT
    puts tree.same?(x, y) ? 'Yes' : 'No'
  end
end
