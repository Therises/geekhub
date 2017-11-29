class Admin::UsersController < ApplicationController
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_back fallback_location: admin_path
	end
end
