class Admin::UsersController < Admin::ApplicationController
	before_action :find_user, except: :index
	def index
		@users = User.paginate(page: params[:page])
	end
	def show
	end
	def update
		@user.update(user_params)
	end
	def destroy
		@user.destroy
	end

	private

	def find_user
		@user = User.find(params[:id])
	end
	def user_params
		params.require(:user).permit(:admin)
	end
end