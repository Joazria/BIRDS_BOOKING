class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:show]
  before_action :configure_permitted_parameters, if: :devise_controller?

 protected


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :username])

    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :username])


  end

end
