emails = [
  'lou.hand@mohr.name', 'sigmund@schamberger.org', 'clement@kreigerbeer.co',
  'marcus_strosin@nienow.org',
  'levi.kuhn@tremblay.info', 'arlo@blickgrant.name', 'jonathon@rath.co',
  'kailee.olson@quigley.org', 'alaina@renner.net', 'dylan@mclaughlin.net',
  'luna_hyatt@ritchiecronin.name', 'amie_blick@kiehn.info',
  'carolina@bechtelargleichner.name', 'saul_heaney@heathcote.com',
  'dell_tromp@kuvalisfunk.io', 'lexie.hyatt@okuneva.com',
  'marquise@oconnerbailey.name', 'adah@hauckspencer.info',
  'gilberto@cronin.name', 'dock.braun@bins.com'
]

ages = [
  30, 14, 30, 27, 23, 17, 25, 22, 24, 13, 27,
  15, 22, 13, 19, 20, 16, 10, 21, 25
]

names = %w[
  Michel Reagan Annabelle Chanelle Jennyfer Adonis
  Vidal Lera Aurore Garrett Vergie Lauryn Paxton
  Osborne Clinton Karson Ellie Hermann Else Otilia
]

# 1
# Create a hash "users"
## Key will be an email
## Value will be an array with age and name

users = {}
emails.size.times do |i|
  users[emails[i]] = [names[i], ages[i]]
end
puts ''
puts '------------------------------------'
puts 'Task 1. Users hash'
puts '------------------------------------'
puts users
puts ''

# 2
# Output a "users" hash who over 19 years old
puts ''
puts '------------------------------------'
puts 'Task 2. Users who over 19 y/o hash'
puts '------------------------------------'
puts(users.select { |_k, v| v[1] > 19 })

# 3
# Output a "users" hash sort order name
puts ''
puts '------------------------------------'
puts 'Task 3. Sorted users hash'
puts '------------------------------------'
puts users.sort_by { |_k, v| v }.to_h
puts ''

# 4
# Output an array with mail domains
## Example ["marcus_strosin@nienow.org"] => ["nienow.org"]
domains = emails.map { |x| x.split('@').last }
puts ''
puts '------------------------------------'
puts 'Task 4. Domains array'
puts '------------------------------------'
puts domains
