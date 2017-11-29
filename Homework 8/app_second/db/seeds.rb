# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.new(email: 'admin@admin', password: 123123, password_confirmation: 123123, admin: true).save
User.new(email: 'user@email1', password: 123123, password_confirmation: 123123).save
User.new(email: 'user@email2', password: 123123, password_confirmation: 123123).save
User.new(email: 'user@email3', password: 123123, password_confirmation: 123123).save
User.new(email: 'user@email4', password: 123123, password_confirmation: 123123).save
User.new(email: 'user@email5', password: 123123, password_confirmation: 123123).save
User.new(email: 'user@email6', password: 123123, password_confirmation: 123123).save
