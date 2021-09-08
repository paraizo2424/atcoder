# 参考：https://qiita.com/ha4gu/items/ecd540355d453862a729

def recursive_dfs(maps, x, y)
  # 処理と停止条件
  if maps[y][x] == '.'
    maps[y][x] = '*'
  elsif maps[y][x] == '#' or maps[y][x] == '*'
    return
  elsif maps[y][x] == 'g'
    puts 'Yes'
    exit
  end

  # 分岐処理　1 メモリ使用量大
  # [-1, 1].each do |i|
  #   recursive_dfs(maps, x + i, y)
  #   recursive_dfs(maps, x, y + i)
  # end

  # 分岐処理　2 メモリ使用量小、実行時間も短い
  recursive_dfs(maps, x + 1, y)
  recursive_dfs(maps, x, y + 1)
  recursive_dfs(maps, x - 1, y)
  recursive_dfs(maps, x, y - 1)

  'No'
end

h, w = gets.split(' ').map(&:to_i)

maps =[]
maps << Array.new(w + 2, '#')
h.times do
  maps << gets.chomp.split('').prepend('#').append('#')
end
maps << Array.new(w + 2, '#')

s_x = -1
s_y = -1

maps.each_with_index do |row, idx|
  if row.include?('s')
    s_x = row.index('s')
    s_y = idx
    break
  end
end

puts recursive_dfs(maps, s_x, s_y)