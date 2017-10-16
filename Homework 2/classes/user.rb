require_relative 'export_csv'

# User class created
class User
  include ExportCSV

  attr_accessor :name, :age, :email
  @@users = {}
  @@id = 1

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
  end

  def add_user
    @@users[@@id] = self
    @@id += 1
  end

  def self.show_users
    @@users.each do |key, user|
      puts "User id#{key}"
      puts "Name: #{user.name}"
      puts "Age: #{user.age}"
      puts "Email: #{user.email}"
      puts ''
    end
    puts '=========================='
  end

  def update_user(name: @name, age: @age, email: @email)
    @name = name if name
    @age = age if age
    @email = email if email
  end

  def remove_user
    @@users.delete_if { |_key, user| user == self }
  end
end

avtandil = User.new('Avtandil', 32, 'avtandil@example.com')
peter = User.new('Peter', 25, 'peter@example.com')
mike = User.new('Mike', 54, 'mike@example.com')
lisa = User.new('Lisa', 26, 'lisa@example.com')

avtandil.add_user
peter.add_user
mike.add_user
lisa.add_user

User.show_users

avtandil.remove_user

User.show_users

mike.to_csv
User.users_to_csv
