contest_no = gets.to_i

if (1 <= contest_no) && (contest_no <= 125)
  puts 4
elsif (126 <= contest_no) && (contest_no <= 211)
  puts 6
elsif (212 <= contest_no) && (contest_no <= 214)
  puts 8
end
