# 参考：https://qiita.com/ryosuketter/items/2798b09330e7102b6cfe
# 参考：https://algo-logic.info/binary-search/

class Array
  def binary_add(target)
    head = 0
    tail = self.count - 1

    loop do
      break if head + 1 == tail
      return false if head == tail

      center = (head + tail) / 2

      if target < self[center]
        tail = center
      else
        head = center
      end
    end

    self.insert(tail, target)
  end

  def binary_search(target)
    head = 0
    tail = self.count - 1

    loop do
      return self[tail] - self[head] if head + 1 == tail
      return false if head == tail

      center = (head + tail) / 2

      if target < self[center]
        tail = center
      else
        head = center
      end
    end
  end
end

tree_len, process_count = gets.split(' ').map(&:to_i)

processes = process_count.times.map{gets.split.map(&:to_i)}

cuttings = [0, tree_len]

processes.each do |process|
  case process[0]
  when 1
    cuttings.binary_add(process.last)
  when 2
    # 二分探索
    pp cuttings
    puts cuttings.binary_search(process.last)
  end
end
