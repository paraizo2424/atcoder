# 参考:https://ufcpp.net/study/algorithm/col_heap.html#:~:text=%E5%84%AA%E5%85%88%E5%BA%A6%E4%BB%98%E3%81%8D%E5%BE%85%E3%81%A1%E8%A1%8C%E5%88%97%EF%BC%88priority%20queue%EF%BC%89%E3%81%A8%E3%81%AF%E3%80%81,%E6%9C%80%E5%88%9D%E3%81%AB%E5%8F%96%E3%82%8A%E5%87%BA%E3%81%95%E3%82%8C%E3%81%BE%E3%81%99%E3%80%82

class Array
  def push_heap(value)
    self.push(value)

    n = self.length - 1

    return if self.length <= 1

    while n > 0
      parent_idx = (n - 1) / 2

      if self[n] < self[parent_idx]
        self[parent_idx], self[n] = self[n], self[parent_idx]
      end

      n = parent_idx
    end
  end

  def pop_heap
    value = self.shift

    n = self.length

    return value if self.length <= 1

    self.unshift(self.pop)

    i = 0
    j = 1

    while (j < n)

      # 子が左右あるか
      if self[j + 1]
        # 小さい子を選択
        if j != n - 1 and self[j] > self[j + 1]
          j += 1
        end
      end

      # 子と値を入れ替え
      if self[j] < self[i]
        self[j], self[i] = self[i], self[j]
      end

      i = j
      j = 2 * i + 1
    end

    value
  end
end

queue_count = gets.to_i

queue = Queue.new
ary = []

queue_count.times do
  tmp = gets.split.map(&:to_i)

  case tmp.first
  when 1
    queue.enq(tmp.last)
  when 2
    if ary.empty?
      puts queue.deq
    else
      puts ary.pop_heap
    end
  when 3
    while !queue.empty?
      ary.push_heap(queue.deq)
    end
  end
end
