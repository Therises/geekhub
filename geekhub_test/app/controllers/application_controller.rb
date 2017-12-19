class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def after_update_path_for(resource)
      edit_user_registration_path(resource)
    end

    def after_sign_in_path_for(resource)
      edit_user_registration_path(resource)
    end


  	def configure_permitted_parameters
  		devise_parameter_sanitizer.permit(:account_update, keys: [profile_attributes:[:first_name, :last_name, :age, :avatar, :id]])
  	end
end
