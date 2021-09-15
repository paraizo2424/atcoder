# TLE
tree_len, process_count = gets.split(' ').map(&:to_i)

processes = []
process_count.times do
  processes << gets.split(' ').map(&:to_i)
end

cuttings = [0, tree_len]

processes.each do |process|

  case process[0]
  when 1
    cuttings << process[1]
  when 2
    # TLE
    # (cuttings.length - 1).times do |j|
    #   if (cuttings[j]..cuttings[j + 1]).include?(process[1])
    #     puts cuttings[j + 1] - cuttings[j]
    #     break
    #   end
    # end

    # 二分探索
    cuttings.sort!
    head = 0
    tail = cuttings.count - 1

    loop do
     center = (head + tail) / 2

     if head == tail
      puts cuttings[tail] - cuttings[head - 1]
      break
     elsif (head + 1) == tail
      puts cuttings[tail] - cuttings[head]
      break
     end

     if (cuttings[head]..cuttings[center]).include?(process[1])
      tail = center
     else
      head = center
     end
    end
  end
end
