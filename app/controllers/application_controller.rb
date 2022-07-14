class ApplicationController < ActionController::Base
  layout :layout_by_resource

  def layout_by_resource
    # user_signed_in? ? nil : "application"
    if user_signed_in? 
      "application_ui"
    else
      devise_controller? ? "devise" : "application"
    end
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  def after_sign_out_path_for(resource)
    user_session_path
  end
end
