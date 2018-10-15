class ApplicationController < ActionController::Base
	before_action :authenticate_user!
#Give permission for add user's name
  before_action :configure_permitted_parameters, if:  :devise_controller?
	#sign_in_and_redirect @user

protected

  def after_sign_in_path_for(resource)
    account_path(current_user.account_id)
  end


  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])

  end
end
