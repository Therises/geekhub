class UsersController < ApplicationController
	def create 
		User.create_auto_password(user_params)
		redirect_to admin_users_path
	end

	private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
