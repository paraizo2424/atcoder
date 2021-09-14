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

    n = self.length - 1

    return value if self.length <= 1

    self.unshift(self.pop)

    i = 0
    j = 1

    while (j < n)

      # 小さい方を選択
      if j != n - 1 and self[j] > self[j + 1]
        j += 1
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
