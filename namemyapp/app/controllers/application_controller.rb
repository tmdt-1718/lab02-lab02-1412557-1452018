class ApplicationController < ActionController::Base
<<<<<<< HEAD

=======
  
>>>>>>> refs/remotes/origin/master
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

<<<<<<< HEAD
def configure_permitted_parameters
  added_attrs = [:name, :email, :password, :password_confirmation, :remember_me]
  devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  devise_parameter_sanitizer.permit :account_update, keys: added_attrs
end
=======
  def configure_permitted_parameters
   added_attrs = [:name, :email, :password, :password_confirmation, :remember_me]
   devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
   devise_parameter_sanitizer.permit :account_update, keys: added_attrs
 end
>>>>>>> refs/remotes/origin/master

end
