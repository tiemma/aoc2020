count = 0
File.readlines("input.txt").each do |line|
  data = line.match(/(\d+)-(\d+) (\w): (\w+)/i)
  start = data[1].to_i
  end_ = data[2].to_i
  letter = data[3]
  word = data[4]
  count += 1 if (start <= word.count(letter)) && (word.count(letter) <= end_)
end

puts count.to_s
