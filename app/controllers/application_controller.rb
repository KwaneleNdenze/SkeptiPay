class ApplicationController < ActionController::Base
  layout :layout_by_resource

  def layout_by_resource
    # user_signed_in? ? nil : "application"
    is_a?(Devise::SessionsController) | is_a?(Devise::RegistrationsController) | is_a?(Devise::PasswordsController) ? "devise" : "application"
   
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
