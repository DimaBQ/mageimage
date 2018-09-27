class RegistrationsController < Devise::RegistrationsController

  protected

   def after_update_path_for(resource)
    	account_path(current_user.account_id)
   end
end