count = 0
File.readlines("input.txt").each do |line|
  data = line.match(/(\d+)-(\d+) (\w): (\w+)/i)
  start = data[1].to_i - 1
  end_ = data[2].to_i - 1
  letter = data[3]
  word = data[4]

  start_b = word[start] == letter
  end_b = word[end_] == letter
  count += 1 if (start_b && !end_b) || (!start_b && end_b)
end

puts count.to_s
