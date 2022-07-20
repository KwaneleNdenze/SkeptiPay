class Merchants::DashboardController < ApplicationController
  def index 
    @user = Account.where(user_id: current_user.id).first
    @payments = @user.payments.all
  end
end