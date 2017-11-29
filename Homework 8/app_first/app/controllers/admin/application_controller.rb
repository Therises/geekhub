class Admin::ApplicationController < ApplicationController
  protect_from_forgery with: :exception

  before_action :require_admin

  private

  def require_admin
    redirect_to root_path unless current_user.admin?
	end
end
