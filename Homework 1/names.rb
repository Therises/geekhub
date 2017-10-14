names = [
  'Stuart Blanda', 'Kaden Batz', 'Cornell Durgan', 'Mrs. Kieran Goldner',
  'Miss Emile Littel', 'Carolyne Terry', 'Mrs. Ronaldo Buckridge',
  'Cristal Braun', 'Dr. Joanne Bartoletti', 'Kenton Block', 'Jeromy Medhurst',
  'Gussie Daniel V', 'Kitty Senger Jr.', 'Lexus Gibson', 'Kaylah Howell',
  'Maxie Wilderman', 'Kayden Mohr', 'Devonte Skiles', 'Tina Mante',
  'Heloise Mann'
]

PREFIXES = %w[Dr. Mrs. Miss Jr. V].freeze

names_without_prefixes = names.map { |x| x.split - PREFIXES }

# 1
## Generate a hash.
### key will be a first name (except Miss, Dr.)
### value will be a second name

task_1_hash = names_without_prefixes.to_h
puts 'First names task results'
puts ''
puts task_1_hash
puts ''

# 2
## Generate a hash.
### key will be a first letter of a first name
### value will be a second letter of a second name

task_2_hash = names_without_prefixes.map { |x| x[0][0].split + x[1][1].split }
task_2_hash = task_2_hash.to_h
puts 'Second names task results'
puts ''
puts task_2_hash
puts ''

# 3
## Generate an array.
### elements will be all a uniq letters of first name and second name
#### need to sort it in alphabetical order
#### Example: ["Stuart Blanda", "Kaden Batz", "Cornell Durgan",
#### "Mrs. Kieran Goldner"]
##### will be ['S', 'B', 'K', 'C', 'D', 'G']

task_3_array = names_without_prefixes.map { |x| x[0][0].split + x[1][0].split }
task_3_array.flatten!.sort!.uniq!
puts 'Third names task results'
puts ''
print task_3_array
puts ''

# 4
## Generate an array
### elements will stay in same position
### need to replace first name with second name

task_4_array = names_without_prefixes.map { |x| x.reverse.join(' ') }

puts ''
puts 'Fourth names task results'
puts ''
print task_4_array
puts ''
