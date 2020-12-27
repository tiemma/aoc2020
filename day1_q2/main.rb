file_data = File.readlines("input.txt").map(&:to_i).sort

file_data.each_index do |index|
  l = index + 1
  r = file_data.length - 1
  while l < r
    x = file_data[index]
    y = file_data[l]
    z = file_data[r]
    sum = x + y + z
    if sum == 2020
      puts "#{x} #{y} #{z} #{x * y * z}"
      break
    elsif sum < 2020
      l += 1
    else
      r -= 1
    end
  end
end
