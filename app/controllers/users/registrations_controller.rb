# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  
  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :phone_number, :username, :type])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    new_account_path
  end

end
