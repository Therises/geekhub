
# 1

## create an array with 40 elements. each element will be a random date
## and temperature ("31.01  -7"). Generate a hash. Key will be a month,
## value will be average temperature for this month.

task_1_array = Array.new(40) do
  Time.at(0.0 + rand * (Time.now.to_f - 0.0.to_f))
      .strftime('%d.%m') + '  ' + rand(-40..40).to_s
end
puts 'Task 1. Date and temperature array'
puts ''
print task_1_array

task_1_array.map!(&:split)
task_1_array.map! { |x| [x.first.split('.').last, x.last] }
temp_array = task_1_array.map(&:first).uniq
temp_hash = {}
temp_array.each do |x|
  temp_hash[x] = task_1_array.map { |y| y.last if y.first == x }.compact
end
task_1_hash = temp_hash.map do |x, y|
  [x, y.map(&:to_i).inject(:+) / y.count]
end.to_h
puts ''
puts ''
puts 'Task 1. Average temperature by month hash'
puts ''
puts task_1_hash

# 2

hash = {
  'yes' => 23, 'b' => 'travel', 'yesterday' => 34.5,
  :yesss => :fg, try: 30, key: 'some value',
  'yesterday1' => 34, 'yesteryear' => 2014
}

## Need to find a count of keys which starts from "yes"

count = 0
hash.each_key do |key|
  count += 1 if key.to_s.include?('yes')
end
puts ''
puts 'Task 2'
puts "Number of strings that start with 'yes' is #{count}"
