class AppMailer < ApplicationMailer

	def sample_email(user, pass)
		@user = user
		@pass = pass
		mail(to: @user.email, subject: 'Welcome to my app!')
	end
end
