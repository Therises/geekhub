User.new(email: 'admin@admin', password: 123123, password_confirmation: 123123, admin: true).save

10.times do |i|
	User.new(email: "user@email#{i}", password: 123123, password_confirmation: 123123).save
end