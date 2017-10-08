names = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]

# 1
## Generate a hash.
### key will be a first name (except Miss, Dr.)
### value will be a second name

task1Hash={}
names.each do |element|
	x=element.split
	x.delete_if{ |y| y=="Dr." or y=="Mrs." or y=="Miss"}
	if x.size == 3
		task1Hash[x[0]]="#{x[1]} #{x[2]}"
	else
		task1Hash[x[0]]=x[1]
	end
end
puts "First names task results"
puts ''
puts task1Hash
puts ''

# 2
## Generate a hash.
### key will be a first letter of a first name
### value will be a second letter of a second name

task2Hash = {}
names.each do |element|
	x=element.split
	x.delete_if{ |y| y=="Dr." or y=="Mrs." or y=="Miss"}
	task2Hash[x[0][0]] = x[1][1]
end
puts "Second names task results"
puts ''
puts task2Hash
puts ''

# 3
## Generate an array.
### elements will be all a uniq letters of first name and second name
#### need to sort it in alphabetical order
#### Example: ["Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner"]
##### will be ['S', 'B', 'K', 'C', 'D', 'G']

task3Array = []
names.each do |element|
	x=element.split
	x.delete_if{ |y| y=="Dr." or y=="Mrs." or y=="Miss"}
	task3Array.push(x[0][0],x[1][0])
end
task3Array.sort!.uniq!

puts "Third names results"
puts ''
print task3Array
puts ''

# 4
## Generate an array
### elements will stay in same position
### need to replace first name with second name

task4Array = []
names.each do |element|
	x=element.split
  if x.include?("Dr.") or x.include?("Mrs.") or x.include?("Miss")
		task4Array.push("#{x[0]} #{x[2]} #{x[1]}")
	elsif x.size==3
		task4Array.push("#{x[1]} #{x[0]} #{x[2]}")
	else
		task4Array.push("#{x[1]} #{x[0]}")
	end
end

puts ''
puts "Fourth names results"
puts ''
print task4Array
puts ''