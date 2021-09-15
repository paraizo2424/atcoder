# 参考：https://qiita.com/ryosuketter/items/2798b09330e7102b6cfe
# 参考：https://algo-logic.info/binary-search/

class Array
  def binary_insert(target)
    head = 0
    tail = self.count - 1

    while head + 1 != tail
      center = (head + tail) / 2

      target < self[center] ? tail = center : head = center
    end

    self.insert(tail, target)
  end

  def binary_search(target)
    head = 0
    tail = self.count - 1

    while head + 1 != tail
      center = (head + tail) / 2

      target < self[center] ? tail = center : head = center
    end

    self[tail] - self[head]
  end
end

tree_length, process_count = gets.split.map(&:to_i)

cuttings = [0, tree_length]

process_count.times do
  process = gets.split
  case process.first
  when '1'
    cuttings.binary_insert(process.last.to_i)
  when '2'
    # 二分探索
    # pp cuttings
    puts cuttings.binary_search(process.last.to_i)
  end
end
