# 参考：https://simanman.hatenablog.com/entry/2013/03/27/014011

def get_shape(grids)
  arr = grids.clone

  4.times do
    loop do
      break if arr.first.include?('#')
      arr.shift
    end

    arr = arr.transpose.map(&:reverse)
  end

  arr
end

grid_size = gets.to_i

a_grids = grid_size.times.map{gets.chomp.chars}

b_grids = grid_size.times.map{gets.chomp.chars}

a_grids = get_shape(a_grids)

b_grids = get_shape(b_grids)

flug = false
4.times do
  flug = true if b_grids == a_grids

  a_grids = a_grids.transpose.map(&:reverse)
end

puts flug ? 'Yes' : 'No'
