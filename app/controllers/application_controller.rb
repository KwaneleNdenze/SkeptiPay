class ApplicationController < ActionController::Base
  layout :layout_by_resource

  def layout_by_resource
    user_signed_in? ? "" : "application"
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
