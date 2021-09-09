h, w = gets.split(' ').map(&:to_i)
s_y, s_x = gets.split(' ').map(&:to_i)
g_y, g_x = gets.split(' ').map(&:to_i)

maps = []
h.times do
  maps << gets.chomp.split('')
end

q = Queue.new
q.enq({
  x: s_x - 1,
  y: s_y -1
})

maps[s_y - 1][s_x - 1] = 0

while !q.empty?
  pos = q.deq

  step = maps[pos[:y]][pos[:x]]

  if pos[:y] == g_y - 1 and pos[:x] == g_x - 1
    puts step
    exit
  end

  [-1, 1].each do |i|
    if maps[pos[:y] + i][pos[:x]] == '.'
      maps[pos[:y] + i][pos[:x]] = step + 1

      q.enq({
        y: pos[:y] + i,
        x: pos[:x]
      })
    end

    if maps[pos[:y]][pos[:x] + i] == '.'
      maps[pos[:y]][pos[:x] + i] = step + 1

      q.enq({
        y: pos[:y],
        x: pos[:x] + i
      })
    end
  end
end
