numbers = %w[
  9461055376 1098029425 1365826266 3651652057
  6639633927 9198606875 3425027805 9600912575
  8826860435 4244213108 8930423446 6975487430
  2956968315 4024720801 8882048673 4897211695
  6089600553 4272319905 4517433227 5565635133
]

# 1
## Generate a hash
### key will be an element itself
### value will be a max digit in a element

task_1_hash = {}
numbers.each do |x|
  task_1_hash[x] = x.split(//).max
end
puts 'First numbers task results'
puts ''
puts task_1_hash
puts ''

# 2
## Generate a string
### string will contain a maximum and minimum digit of each element
### Example: numbers = [ "9461055376", "4517433227" ]
### will be "9071"

task_2_string = ''
numbers.each do |x|
  task_2_string = "#{task_2_string}#{x.split(//).max}#{x.split(//).min}"
end
puts 'Second numbers task results'
puts ''
puts task_2_string
puts ''

# 3
## Generate a number
### number will be a sum of two maximum and two minimum elements

task_3_array = numbers

task_3_array.sort!
task_3_number = task_3_array[0].to_i + task_3_array[1].to_i +
                + task_3_array[-1].to_i + task_3_array[-2].to_i

puts 'Third numbers task results'
puts ''
puts task_3_number
puts ''
