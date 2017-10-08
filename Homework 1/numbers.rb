numbers = [
  "9461055376", "1098029425", "1365826266", "3651652057",
  "6639633927", "9198606875", "3425027805", "9600912575",
  "8826860435", "4244213108", "8930423446", "6975487430",
  "2956968315", "4024720801", "8882048673", "4897211695",
  "6089600553", "4272319905", "4517433227", "5565635133"
]

# 1
## Generate a hash
### key will be an element itself
### value will be a max digit in a element

task1Hash = {}
numbers.each do |x|
  task1Hash[x] = x.split(//).max
end
puts "First numbers task results"
puts ''
puts task1Hash
puts ''




# 2
## Generate a string
### string will contain a maximum and minimum digit of each element
### Example: numbers = [ "9461055376", "4517433227" ]
### will be "9071"

task2String = ""
numbers.each do |x|
  task2String = "#{task2String}#{x.split(//).max}#{x.split(//).min}"
end
puts "Second numbers task results"
puts ''
puts task2String
puts ''

# 3
## Generate a number
### number will be a sum of two maximum and two minimum elements

a = task2String.split(//).sort
task3Number = a[0].to_i + a[1].to_i + a[-1].to_i + a[-2].to_i

puts "Third numbers task results"
puts ''
puts task3Number
puts ''

