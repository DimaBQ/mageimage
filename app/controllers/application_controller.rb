class ApplicationController < ActionController::Base
	
#Give permission for add user's name
  before_action :configure_permitted_parameters, if:  :devise_controller?


protected

  def after_sign_in_path_for(resource)
  	account_path(current_user.id)
  end

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])

  end
end
