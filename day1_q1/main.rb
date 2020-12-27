data = Hash.new(0)
File.readlines("input.txt").each do |line|
  val = line.to_i
  alter_val = 2020 - val
  if data.has_key?(alter_val)
    puts "#{val} #{alter_val} #{val * alter_val}"
    break
  end
  data[line.to_i] = true
end
